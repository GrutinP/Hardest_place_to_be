;=============================================================
; 15_route_b_red_yes.ks  ⑩「はい」：折りたたみ傘のネタばらし〜17_quiz
; ← 14_route_b_red.ks（選択肢⑩：はい）
; → 17_quiz.ks
; 引き継ぎ: bg_conbini_mae.jpg / ajisai_n表示中 umbrella="red" eyebrow="komari" eye="toji" mouth="normal" / BGMなし / 雨なし
;=============================================================

[cm]


; ★ 傘パーツ: umbrella="red"（14から引き継ぎ）
; アジサイ: 通常・通常・通常（「はい」直後・無言）
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="normal"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="normal" mouth="normal" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
……………………[p]


; アジサイ: 通常・通常・笑み
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="emi"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="normal" mouth="emi" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
………… ありがとう ね[p]


; BGM FI: 雨の音
[fadeinbgm storage="bgm_ame.wav" loop="true" time="1000"]


; SE: 鞄をゴソゴソ（TODO 仮素材未作成）
;[playse storage="se_gosogoso.wav"]


; 処理: 立ち絵揺らし（TODO アニメーション実装 / 鞄から何か取り出す動作）
[wait time="500"]


; プレイヤー（内心）
#&f.p_name
（鞄から何かを出そうとしている）[p]


; 画像: 赤い折りたたみ傘（TODO 素材未作成）
;[image layer="1" storage="TODO_item_folding_umbrella.png" page="fore" x="400" y="200" visible="true"]


; プレイヤー（内心）
#&f.p_name
（これは…………）[p]


; アジサイ: 通常・困り・目閉じ・へ
[chara_part name="ajisai_n" eyebrow="komari" eye="toji" mouth="he"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="komari" eye="toji" mouth="he" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
; 折りたたみ傘画像消去
;[freeimage layer="1" page="fore"]
#&f.c_name
別に隠すつもりは無かったんだけど[p]


; アジサイ: 通常・通常・O
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="o"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="normal" mouth="o" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
11番目が1番ツライ！ なんて話をした後で[p]


; アジサイ: 通常・目閉じ・むくれ
[chara_part name="ajisai_n" eyebrow="normal" eye="toji" mouth="mukure"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="toji" mouth="mukure" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
私は12番目だけどね とは言いづらくってさ[p]


; アジサイ: 困り・通常・x
[chara_part name="ajisai_n" eyebrow="komari" eye="normal" mouth="x"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="komari" eye="normal" mouth="x" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
……………………[p]


; アジサイ: 通常・通常・イー
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="i"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="normal" mouth="i" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
あなたの星座を知っていたのは [r]
あなたのこと 知ってたから[p]


; 立ち絵消去・背景切り替え（長語りモノローグ区間へ）
[chara_hide name="ajisai_n" layer="3" time="200"]
[hide_rain]
[bg storage="black.jpg" time="300"]
; TODO: 「街 別背景 長語り用」専用素材に差し替え
[bg storage="bg_ame_michi.jpg" time="300"]
[show_rain]


; ---- アジサイ モノローグ（立ち絵なし）----
#&f.c_name
その日 あなたが私たちの教室で 友達と話しながら[p]

#&f.c_name
近くに落ちていたゴミを ひょいと拾って[p]

#&f.c_name
ゴミ箱に入れて 教室を出て行ったの[p]

#&f.c_name
自分のクラスじゃ無いのに 本当にさりげなく[p]

#&f.c_name
私も 同じことをしたと思う[p]

#&f.c_name
でもそれは 誰かに褒めてもらおうとか [r]

そういうのじゃない[p]

#&f.c_name
なんとなく そうしてきたから[p]

#&f.c_name
あなたも そうなのかな て[p]


[hide_rain]

; ★ コンビニ前（軒先）へ戻る（現在・実際のシーン）
[bg storage="bg_conbini_mae.jpg" time="300"]
; ※ 軒下のため雨エフェクト不要

; 立ち絵再表示（通常立ち絵）
[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="normal" mouth="i" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
[show_ajisai_n]
#&f.c_name
それから あなたのこと気になって[p]


; アジサイ: 困り・目閉じ・へ
[chara_part name="ajisai_n" eyebrow="komari" eye="toji" mouth="he"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="komari" eye="toji" mouth="he" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
遠巻きに 好きな食べ物とか よく読む漫画とか[p]


; アジサイ: 通常・通常・笑み
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="emi"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="normal" mouth="emi" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
星座の話 聞こえてきたことがあったんだ[p]


; アジサイ: 通常・目閉じ笑み・▽
[chara_part name="ajisai_n" eyebrow="normal" eye="toji_emi" mouth="v"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="toji_emi" mouth="v" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
それだけ[p]


; 立ち絵消去・背景切り替え（紫陽花モノローグ区間へ）
[chara_hide name="ajisai_n" layer="3" time="200"]
[hide_rain]
[bg storage="black.jpg" time="300"]
; TODO: 「紫陽花」専用素材に差し替え（仮: 黒）
[show_rain]

; ---- アジサイ モノローグ（立ち絵なし / 紫陽花背景）----
#&f.c_name
初めて話しかけたから 緊張しちゃって[p]

#&f.c_name
折りたたみ傘があるから 貸してあげる[p]

#&f.c_name
て 言えれば良かったんだけど[p]

#&f.c_name
赤い傘を出したら 星座占いのことバレそうだったし[p]

#&f.c_name
なんとなく嘘ついちゃったし[p]

#&f.c_name
そしたら流れで一緒の傘に入ることになっちゃって[p]

#&f.c_name
そしたら そしたら あれこれ起きちゃった[p]


[hide_rain]

; ★ コンビニ前ズーム（アジサイが身振りを交えて話すシーン・現在）
; TODO: bg_conbini_mae_zoom.jpg 専用素材に差し替え（仮素材）
[bg storage="bg_conbini_mae_zoom.jpg" time="300"]
; ※ 軒下のため雨エフェクト不要
[chara_part name="ajisai_w" base="walk" eyebrow="normal" eye="normal" mouth="normal" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
[show_ajisai_w]
#&f.c_name
傘も壊れちゃってさ[p]


; アジサイ（歩き）: 困り・目閉じ・へ
[chara_part name="ajisai_w" eyebrow="komari" eye="toji" mouth="he"]
;[chara_part name="ajisai_w" base="walk" eyebrow="komari" eye="toji" mouth="he" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
嘘ついて こんなことになったあげく[p]


; アジサイ（歩き）: 怒り・ジト目・むくれ
[chara_part name="ajisai_w" eyebrow="okori" eye="jito" mouth="mukure"]
;[chara_part name="ajisai_w" base="walk" eyebrow="okori" eye="jito" mouth="mukure" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
あなたは傘買いに行っちゃった[p]


; アジサイ（歩き）: 困り・目閉じ・x
[chara_part name="ajisai_w" eyebrow="komari" eye="toji" mouth="x"]
;[chara_part name="ajisai_w" base="walk" eyebrow="komari" eye="toji" mouth="x" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
でも 言い出せなくて[p]


; アジサイ（歩き）: 通常・通常・へ
[chara_part name="ajisai_w" eyebrow="normal" eye="normal" mouth="he"]
;[chara_part name="ajisai_w" base="walk" eyebrow="normal" eye="normal" mouth="he" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
素直に謝ろうと思ってたら[p]


; アジサイ（歩き）: 通常・通常・イー
[chara_part name="ajisai_w" eyebrow="normal" eye="normal" mouth="i"]
;[chara_part name="ajisai_w" base="walk" eyebrow="normal" eye="normal" mouth="i" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
赤い傘 持って現れるじゃん[p]


; 立ち絵消去・背景リセット（通常立ち絵区間へ）
[chara_hide name="ajisai_w" layer="3" time="200"]
[bg storage="black.jpg" time="200"]
; ★ コンビニ前（軒先・通常画角）へ戻る
[bg storage="bg_conbini_mae.jpg" time="300"]
; ※ 軒下のため雨エフェクト不要

; 立ち絵再表示（通常立ち絵）
[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="komari" eye="toji" mouth="he" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
[show_ajisai_n]
#&f.c_name
びっくりするよ そりゃ[p]


; アジサイ: 困り・ジト目・むくれ
[chara_part name="ajisai_n" eye="jito" mouth="mukure"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="komari" eye="jito" mouth="mukure" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
だって頭の中 赤い傘のことで [r]
いっぱいだったんだもん[p]


; アジサイ: 通常・通常・通常
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="normal"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="normal" mouth="normal" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
ホント[p]


; アジサイ: 困り・通常・イー
[chara_part name="ajisai_n" eyebrow="komari" eye="normal" mouth="i"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="komari" eye="normal" mouth="i" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
すごいよ[p]


; アジサイ: 困り・目閉じ・むくれ（赤面弱）
[chara_part name="ajisai_n" eye="toji" mouth="mukure" effect="akagao_weak"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="komari" eye="toji" mouth="mukure" effect="akagao_weak" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
……………………[p]

;tips：（語っちゃったなー）


; プレイヤー（内心）
#&f.p_name
（……………………）[p]


; アジサイ: 通常・目閉じ笑み・▽（赤面なし）
[chara_part name="ajisai_n" eyebrow="normal" eye="toji_emi" mouth="v" effect="none"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="toji_emi" mouth="v" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
じゃあ この傘で 駅まで行きマスカ[p]


; プレイヤー（内心）
#&f.p_name
（…………また一つの傘で？）[p]


; アジサイ: 困り・通常・むくれ
[chara_part name="ajisai_n" eyebrow="komari" eye="normal" mouth="mukure"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="komari" eye="normal" mouth="mukure" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
え？ [r]
ああ 折りたたみ傘？[p]


; アジサイ: 怒り・目閉じ笑み・▽
[chara_part name="ajisai_n" eyebrow="okori" eye="toji_emi" mouth="v"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="okori" eye="toji_emi" mouth="v" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
…………もういいじゃん [r]
ここまで来たんだから[p]


; アジサイ: 通常・驚き・x
[chara_part name="ajisai_n" eyebrow="normal" eye="odoroki" mouth="x"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="odoroki" mouth="x" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
あ[p]


; アジサイ: 困り・ジト目・通常
[chara_part name="ajisai_n" eyebrow="komari" eye="jito" mouth="normal"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="komari" eye="jito" mouth="normal" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
ああ そうか [r]
なんで一緒の傘に入ってきたか 説明してなかったね[p]


; アジサイ: 通常・目閉じ・x
[chara_part name="ajisai_n" eyebrow="normal" eye="toji" mouth="x"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="toji" mouth="x" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
んー[p]


;tips：（あなたから不幸を遠ざけるため だよ）


; アジサイ: 通常・目閉じ笑み・▽
[chara_part name="ajisai_n" eyebrow="normal" eye="toji_emi" mouth="v"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="toji_emi" mouth="v" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
好きに想像していいよ もう[p]


; アジサイ: 通常・通常・イー
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="i"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="normal" mouth="i" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
行こう 11番目[p]


; アジサイ: 通常・目閉じ笑み・▽
[chara_part name="ajisai_n" eyebrow="normal" eye="toji_emi" mouth="v"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="toji_emi" mouth="v" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
んで 私は 12番目[p]


; プレイヤー（内心）
#&f.p_name
（まだ 何かを隠していたいようだ）[p]


; 立ち絵消去・背景消去
[chara_hide name="ajisai_n" layer="3" time="200"]
[hide_rain]
[bg storage="black.jpg" time="300"]


; プレイヤー（内心）
#&f.p_name
（残り少ない 駅までの道を歩き始めた）[p]

#&f.p_name
（二人で 赤い傘を使った）[p]


; 背景: 雨空（TODO 専用素材に差し替え）
;[bg storage="TODO_bg_ame_zora.jpg" time="300"]
[show_rain]


; アジサイ（立ち絵なし）
#&f.c_name
ほらほら 私の肩が はみ出て濡れてますよー[p]

#&f.c_name
いや あなたの方が濡れてるー！ ウケ[p]


; 背景消去・プレイヤー内心
[bg storage="black.jpg" time="500"]
[hide_rain]
[wait time="200"]
#&f.p_name
（雨は降り続いている）[p]


; BGM FO
[fadeoutbgm time="1000"]
[wait time="300"]
[cm]

[jump storage="scene/17_quiz.ks"]

[s]
