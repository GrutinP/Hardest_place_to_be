;=============================================================
; 03_prologue.ks  序幕：雨宿り→ヒロイン登場→相合傘で出発
; ← 02_opening.ks
;=============================================================

[cm]


; BGM: 雨の音（ループ）
;[playbgm storage="TODO_bgm_ame.ogg" loop="true" time="2000"]


; 明転（軒下+雨の背景へ）
[bg storage="bg_ame_yane.jpg" time="500"]
[show_rain]

; プレイヤー（内心）
（ひどい雨だ…………）[p]
（動けそうに無い）[p]


; アジサイ（オフスクリーン・声のみ）
;[playse storage="TODO_voice_ajisai_off_01.ogg"]
あの[p]


; プレイヤー（内心）
（？）[p]


; 演出: 立ち絵を下からPU（水たまりに映った逆さ。ミサンガを見せる縦長構図）
;       両脇を黒いダミー画像で蓋 → 専用素材なし、未実装
;[image storage="TODO_chara_pu_effect.png" layer="0" x="0" y="0" width="816" height="624"]
;[wait time="1500"]
;[freeimage layer="0"]


; 背景切り替え: 軒下 → 街中、立ち絵と同時表示
[bg storage="bg_ame_michi.jpg" time="500"]


; 立ち絵: 初期パーツ設定（傘=赤、表情=通常、汚れなし）
[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="normal" mouth="normal" effect="none" bad01="0" bad02="0" bad03="0"]
;[chara_show name="ajisai_n" time="500"]
[show_ajisai_n time="500"]


;

; アジサイ: 傘 忘れたの？（眉=通常、目=通常、口=O）
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="o" effect="none"]
#ajisai_n
;[playse storage="TODO_voice_ajisai_02.ogg"]
傘 忘れたの？


; 選択肢①（影響なし）: 傘を忘れた理由
[glink text="本当に降るとは 思わなくて" size="28" color="white" x="280" y="220" width="720" target="*choice1_cont"]
[glink text="運が悪かった"               size="28" color="white" x="280" y="320" width="720" target="*choice1_cont"]
[s]


*choice1_cont


; アジサイ: そうなの（眉=困り、目=通常、口=笑み）
[chara_part name="ajisai_n" eyebrow="komari" eye="normal" mouth="emi" effect="none"]
#ajisai_n
;[playse storage="TODO_voice_ajisai_03.ogg"]
そうなの[p]


; アジサイ: それで 雨宿り してたんだね（眉=困り、目=目閉じ、口=O）
[chara_part name="ajisai_n" eyebrow="komari" eye="toji" mouth="o" effect="none"]
#ajisai_n
;[playse storage="TODO_voice_ajisai_04.ogg"]
それで 雨宿り してたんだね[p]


; アジサイ: 沈黙・赤面（眉=通常、目=驚き、口=ｘ、エフェクト=赤面弱）
[chara_part name="ajisai_n" eyebrow="normal" eye="odoroki" mouth="x" effect="akagao_weak"]
#ajisai_n
;[playse storage="TODO_voice_ajisai_05.ogg"]
……………………[p]


;★（なにこれ ラッキーアイテム バカ効きじゃん）


; プレイヤー（内心）
（……………………）[p]
（………… 誰？）[p]


; アジサイ: 話し相手の申し出（眉=通常、目=驚き、口=▽、エフェクト=赤面強）
[chara_part name="ajisai_n" eyebrow="normal" eye="odoroki" mouth="v" effect="akagao_strong"]
#ajisai_n
;[playse storage="TODO_voice_ajisai_07.ogg"]
よ よ よ よかったら 話し相手 してあげるよっ[p]


;★（うあー！ やめろー！ 何 言ってんだ私ー！）


; アジサイ: 申し出を取り繕う（眉=怒り、目=目閉じ笑み、口=笑み、エフェクト=赤面弱）
[chara_part name="ajisai_n" eyebrow="okori" eye="toji_emi" mouth="emi" effect="akagao_weak"]
#ajisai_n
;[playse storage="TODO_voice_ajisai_09.ogg"]
いや あなたは 私の話し相手を [r]
するべきだと思うなぁ うん[p]


; アジサイ: 難解語で誤魔化す（眉=怒り、目=驚き、口=▽、エフェクト=赤面強）
; ※傾慕/至誠/挺身/接遇はキャラ演出用語。プレイヤーへの説明なし
[chara_part name="ajisai_n" eyebrow="okori" eye="odoroki" mouth="v" effect="akagao_strong"]
#ajisai_n
;[playse storage="TODO_voice_ajisai_10.ogg"]
優しい私の 傾慕と至誠に 挺身して接合しようよ [r]
うん そうしようっ[p]

/*
	※傾慕（けいぼ）：心を傾けて慕うこと、心から憧れ愛すること
	※至誠（しせい）：この上なく誠実であることや、偽りのない真心
	※挺身（ていしん）：自ら率先して危険や困難なことに立ち向かい、自分の身を投げ出して事にあたること
	※接遇（せつごう）：おもてなしの心を持ち、相手の立場に立って心を込めて接すること
	ちゃっかり好きという単語を混ぜるための演出（プレイヤーに説明はしない）
*/


; プレイヤー（内心）: 意味がわからない
（…………？？？ ケイボ てなに？？？）[p]


; アジサイ: しどろもどろ（眉=困り、目=ジト目、口=へ、エフェクト=汗）
[chara_part name="ajisai_n" eyebrow="komari" eye="jito" mouth="he" effect="ase"]
#ajisai_n
;[playse storage="TODO_voice_ajisai_11.ogg"]
えーと えっと ……………………えっとね[p]


;★（ごまかさなきゃ ごまかさなきゃ）


; アジサイ: 話題を変える（眉=通常、目=驚き、口=▽）
[chara_part name="ajisai_n" eyebrow="normal" eye="odoroki" mouth="v" effect="none"]
#ajisai_n
;[playse storage="TODO_voice_ajisai_13.ogg"]
あ！ さっきの話[p]


; アジサイ: 占いを見たと指摘（眉=通常、目=通常、口=笑み）
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="emi" effect="none"]
#ajisai_n
;[playse storage="TODO_voice_ajisai_14.ogg"]
本当に降るとは だか 運が悪かった だか [r]
言ってたじゃん[p]


; アジサイ: 朝の占いを見たと確認（眉=通常、目=目閉じ笑み、口=イー）
[chara_part name="ajisai_n" eyebrow="normal" eye="toji_emi" mouth="i" effect="none"]
#ajisai_n
;[playse storage="TODO_voice_ajisai_15.ogg"]
朝の星座占いコーナー 見たんだよね きっと[p]


; アジサイ: プレイヤーの星座を言い当てる（眉=困り、目=目閉じ、口=通常）
; ※星座ごとにボイス差分あり（02_opening参照）、[p]は分岐の外
[chara_part name="ajisai_n" eyebrow="komari" eye="toji" mouth="normal" effect="none"]
#ajisai_n
[if exp="f.p_sign==1"]
	;[playse storage="TODO_voice_ajisai_psign16_01.ogg"]
	あなたってば 『 おひつじ座 』だから………… [r]11番目だったっけ
[elsif exp="f.p_sign==2"]
	;[playse storage="TODO_voice_ajisai_psign16_02.ogg"]
	あなたってば 『 おうし座 』だから………… [r]11番目だったっけ
[elsif exp="f.p_sign==3"]
	;[playse storage="TODO_voice_ajisai_psign16_03.ogg"]
	あなたってば 『 ふたご座 』だから………… [r]11番目だったっけ
[elsif exp="f.p_sign==4"]
	;[playse storage="TODO_voice_ajisai_psign16_04.ogg"]
	あなたってば 『 かに座 』だから………… [r]11番目だったっけ
[elsif exp="f.p_sign==5"]
	;[playse storage="TODO_voice_ajisai_psign16_05.ogg"]
	あなたってば 『 しし座 』だから………… [r]11番目だったっけ
[elsif exp="f.p_sign==6"]
	;[playse storage="TODO_voice_ajisai_psign16_06.ogg"]
	あなたってば 『 おとめ座 』だから………… [r]11番目だったっけ
[elsif exp="f.p_sign==7"]
	;[playse storage="TODO_voice_ajisai_psign16_07.ogg"]
	あなたってば 『 てんびん座 』だから………… [r]11番目だったっけ
[elsif exp="f.p_sign==8"]
	;[playse storage="TODO_voice_ajisai_psign16_08.ogg"]
	あなたってば 『 さそり座 』だから………… [r]11番目だったっけ
[elsif exp="f.p_sign==9"]
	;[playse storage="TODO_voice_ajisai_psign16_09.ogg"]
	あなたってば 『 いて座 』だから………… [r]11番目だったっけ
[elsif exp="f.p_sign==10"]
	;[playse storage="TODO_voice_ajisai_psign16_10.ogg"]
	あなたってば 『 やぎ座 』だから………… [r]11番目だったっけ
[elsif exp="f.p_sign==11"]
	;[playse storage="TODO_voice_ajisai_psign16_11.ogg"]
	あなたってば 『 みずがめ座 』だから………… [r]11番目だったっけ
[elsif exp="f.p_sign==12"]
	;[playse storage="TODO_voice_ajisai_psign16_12.ogg"]
	あなたってば 『 うお座 』だから………… [r]11番目だったっけ
[endif]
[p]


; プレイヤー（内心）: この子と以前に話したことがあったか？
（…………？ …………前に 星座について）[r]
（この子と話したことが あったのだろうか…………？）[p]


; アジサイ: 不運を認める（眉=困り、目=通常、口=笑み）
[chara_part name="ajisai_n" eyebrow="komari" eye="normal" mouth="emi" effect="none"]
#ajisai_n
;[playse storage="TODO_voice_ajisai_17.ogg"]
ついてないね[p]


; アジサイ: 12番目との比較（眉=通常、目=目閉じ、口=O）
; ※「ラッキーアーテイム」はキャラの言い間違い
[chara_part name="ajisai_n" eyebrow="normal" eye="toji" mouth="o" effect="none"]
#ajisai_n
;[playse storage="TODO_voice_ajisai_18.ogg"]
だって 12番目はさ ラッキーアーテイムとかいう [r]
バフアイテムのヒントをもらえるじゃん[p]


; アジサイ: 実質最下位の主張（眉=通常、目=通常、口=通常）
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="normal" effect="none"]
#ajisai_n
;[playse storage="TODO_voice_ajisai_19.ogg"]
それじゃあ 11番目が 実質の最下位だもの[p]


; プレイヤー（内心）: 沈黙
（……………………）[p]


; アジサイ: プレイヤーの表情に焦る（眉=怒り、目=驚き、口=笑み、エフェクト=汗）
[chara_part name="ajisai_n" eyebrow="okori" eye="odoroki" mouth="emi" effect="ase"]
#ajisai_n
;[playse storage="TODO_voice_ajisai_20.ogg"]
…………あ いや そのぅ[p]


;★（やっちまった いますぐ わたしを はかにうめて）


; アジサイ: 同じ星座だと嘘をつく（眉=怒り、目=目閉じ笑み、口=▽、エフェクト=赤面弱）
; ※プレイヤーの星座と同じだと主張する嘘（カバーストーリー）。星座ごとにボイス差分あり
[chara_part name="ajisai_n" eyebrow="okori" eye="toji_emi" mouth="v" effect="akagao_weak"]
#ajisai_n
[if exp="f.p_sign==1"]
	;[playse storage="TODO_voice_ajisai_psign22_01.ogg"]
	わ わ わ わたしも じつは 『 おひつじ座 』 なのでしたー！
[elsif exp="f.p_sign==2"]
	;[playse storage="TODO_voice_ajisai_psign22_02.ogg"]
	わ わ わ わたしも じつは 『 おうし座 』 なのでしたー！
[elsif exp="f.p_sign==3"]
	;[playse storage="TODO_voice_ajisai_psign22_03.ogg"]
	わ わ わ わたしも じつは 『 ふたご座 』 なのでしたー！
[elsif exp="f.p_sign==4"]
	;[playse storage="TODO_voice_ajisai_psign22_04.ogg"]
	わ わ わ わたしも じつは 『 かに座 』 なのでしたー！
[elsif exp="f.p_sign==5"]
	;[playse storage="TODO_voice_ajisai_psign22_05.ogg"]
	わ わ わ わたしも じつは 『 しし座 』 なのでしたー！
[elsif exp="f.p_sign==6"]
	;[playse storage="TODO_voice_ajisai_psign22_06.ogg"]
	わ わ わ わたしも じつは 『 おとめ座 』 なのでしたー！
[elsif exp="f.p_sign==7"]
	;[playse storage="TODO_voice_ajisai_psign22_07.ogg"]
	わ わ わ わたしも じつは 『 てんびん座 』 なのでしたー！
[elsif exp="f.p_sign==8"]
	;[playse storage="TODO_voice_ajisai_psign22_08.ogg"]
	わ わ わ わたしも じつは 『 さそり座 』 なのでしたー！
[elsif exp="f.p_sign==9"]
	;[playse storage="TODO_voice_ajisai_psign22_09.ogg"]
	わ わ わ わたしも じつは 『 いて座 』 なのでしたー！
[elsif exp="f.p_sign==10"]
	;[playse storage="TODO_voice_ajisai_psign22_10.ogg"]
	わ わ わ わたしも じつは 『 やぎ座 』 なのでしたー！
[elsif exp="f.p_sign==11"]
	;[playse storage="TODO_voice_ajisai_psign22_11.ogg"]
	わ わ わ わたしも じつは 『 みずがめ座 』 なのでしたー！
[elsif exp="f.p_sign==12"]
	;[playse storage="TODO_voice_ajisai_psign22_12.ogg"]
	わ わ わ わたしも じつは 『 うお座 』 なのでしたー！
[endif]
[p]

; アジサイ: 知っていて当然だと言い張る（眉=通常、目=驚き、口=▽、エフェクト=赤面強）
[chara_part name="ajisai_n" eyebrow="normal" eye="odoroki" mouth="v" effect="akagao_strong"]
#ajisai_n
;[playse storage="TODO_voice_ajisai_23.ogg"]
だ だ だから あなたの星座のことも知ってたし それが11番目だということを知っていても 何も怪しく ないよねー？？？[p]
;自動改行、早口


; アジサイ: 開き直り（眉=困り、目=目閉じ、口=むくれ）
[chara_part name="ajisai_n" eyebrow="komari" eye="toji" mouth="mukure" effect="none"]
#ajisai_n
;[playse storage="TODO_voice_ajisai_24.ogg"]
……………………[p]


;★（うまくごまかせた！ ……んなわけあるかィッ！）


; プレイヤー（内心）: 雨が続く
（…………雨が弱まる気配はない…………）[p]


; アジサイ: 気まずい沈黙（眉=通常、目=通常、口=通常）
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="normal" effect="none"]
#ajisai_n
;[playse storage="TODO_voice_ajisai_26.ogg"]
……………………[p]


;★（一緒に帰りたいな。ここにいてもつまんないよね。でも一緒にいたらひどい目に遭わせるかも）


; アジサイ: 悶々とした沈黙（眉=困り、目=ジト目、口=むくれ、エフェクト=赤面弱）
[chara_part name="ajisai_n" eyebrow="komari" eye="jito" mouth="mukure" effect="akagao_weak"]
#ajisai_n
;[playse storage="TODO_voice_ajisai_28.ogg"]
……………………[p]


;★（…………笑ってるとこ 見たいな）


; アジサイ: 傘を貸そうとして途中で止まる（眉=通常、目=通常、口=うろたえ）
; ※自分も11番目と言ったばかりなのでラッキーアイテムを出せない
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="urotatae" effect="none"]
#ajisai_n
;[playse storage="TODO_voice_ajisai_30.ogg"]
よ よ よかったら 傘 もう一本 あまっ[p]


; アジサイ: 口が止まる（眉=通常、目=驚き、口=ｘ）
[chara_part name="ajisai_n" eyebrow="normal" eye="odoroki" mouth="x" effect="none"]
#ajisai_n
;[playse storage="TODO_voice_ajisai_31.ogg"]
あ[p]


;★（いやだめだ さっき自分も11番目 て 言っちゃった。ここでラッキーアイテムが鞄から出てきたら 絶対変だ！）


; プレイヤー（内心）
（…………？）[p]


; アジサイ: 言いかけた言葉を誤魔化す（眉=困り、目=目閉じ笑み、口=O）
[chara_part name="ajisai_n" eyebrow="komari" eye="toji_emi" mouth="o" effect="none"]
#ajisai_n
;[playse storage="TODO_voice_ajisai_33.ogg"]
あま あま[p]


;★（この振り上げた拳（口）を どうにかしてくれさい）


; アジサイ: 甘納豆と言い切る（眉=怒り、目=驚き、口=▽）
[chara_part name="ajisai_n" eyebrow="okori" eye="odoroki" mouth="v" effect="none"]
#ajisai_n
;[playse storage="TODO_voice_ajisai_35.ogg"]
…………甘納豆


; 選択肢②（影響なし）: 甘納豆エピソード
[glink text="…………なんて？"              size="28" color="white" x="280" y="220" width="720" target="*choice2_cont"]
[glink text="あんまり 食べないかな 自分は"  size="28" color="white" x="280" y="320" width="720" target="*choice2_cont"]
[s]


*choice2_cont



; アジサイ: 間（眉=困り、目=目閉じ、口=へ）
[chara_part name="ajisai_n" eyebrow="komari" eye="toji" mouth="he" effect="none"]
#ajisai_n
;[playse storage="TODO_voice_ajisai_36.ogg"]
……………………[p]


; アジサイ: 反応に感想（眉=通常、目=通常、口=通常）
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="normal" effect="none"]
#ajisai_n
;[playse storage="TODO_voice_ajisai_37.ogg"]
今のはひどかったね [r]
でもおかげで 冷静になれた[p]


; アジサイ: 相合傘を提案（眉=通常、目=通常、口=笑み）
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="emi" effect="none"]
#ajisai_n
;[playse storage="TODO_voice_ajisai_38.ogg"]
傘に入れてあげるから 一緒に駅まで行こう[p]


; アジサイ: この雨はやまないと予言（眉=困り、目=目閉じ、口=イー）
[chara_part name="ajisai_n" eyebrow="komari" eye="toji" mouth="i" effect="none"]
#ajisai_n
;[playse storage="TODO_voice_ajisai_39.ogg"]
11番目だし きっとヤまないよ この雨は さ[p]


; アジサイ: 出発を促す（眉=通常、目=目閉じ笑み、口=笑み）
[chara_part name="ajisai_n" eyebrow="normal" eye="toji_emi" mouth="emi" effect="none"]
#ajisai_n
;[playse storage="TODO_voice_ajisai_40.ogg"]
観念して ほら 行こ 11番目さん[p]


; アジサイ: 沈黙（眉=通常、目=通常、口=通常）
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="normal" effect="none"]
#ajisai_n
;[playse storage="TODO_voice_ajisai_41.ogg"]
……………………[p]


;★（流れで一緒の傘になっちゃったけど いいよね。あれ なんか忘れてるような）


; アジサイ: テンションが上がりすぎて自爆（眉=怒り、目=驚き、口=▽、エフェクト=赤面強）
[chara_part name="ajisai_n" eyebrow="okori" eye="odoroki" mouth="v" effect="akagao_strong"]
#ajisai_n
;[playse storage="TODO_voice_ajisai_43.ogg"]
わ わ わたしも11番目だったっ！ あはははハハハはははっ[p]


; アジサイ: 自分でも引く（眉=困り、目=ジト目、口=うろたえ、エフェクト=赤面弱）
[chara_part name="ajisai_n" eyebrow="komari" eye="jito" mouth="urotatae" effect="akagao_weak"]
#ajisai_n
;[playse storage="TODO_voice_ajisai_44.ogg"]
…………はぁ[p]


[cm]
; 暗転
[bg storage="black.jpg" time="500" wait="false"]

; 立ち絵を消去
[chara_hide name="ajisai_n" time="300"]

; BGM フェードアウト（雨の音）
;[fadeoutbgm time="2000"]

[wait time="300"]

; 04_bad01（水たまり事件）へ
[jump storage="scene/04_bad01.ks"]

[s]
