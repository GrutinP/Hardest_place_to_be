;=============================================================
; 10_bad03.ks  3つめの不幸：傘が壊れる〜選択肢⑧
; ← 08_bad02_a.ks（⑥A） / 09_bad02_b.ks（⑥B）
;=============================================================

[cm]


; BGM: 雨の音 FI
[fadeinbgm storage="bgm_ame.wav" loop="true" time="1000"]

; 歩き演出開始（街背景スクロール・上下黒帯・雨）
[start_walk_bg]
[show_letterbox]
[show_rain]


; アジサイ: 歩き立ち絵 通常・通常・通常
[chara_part name="ajisai_w" base="normal" eyebrow="normal" eye="normal" mouth="normal" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
[show_ajisai_w]


; プレイヤー（内心）
#&f.p_name
（雨脚は強いままだ）[p]

#&f.p_name
（でも駅までもうすぐ）[p]


; アジサイ: 困り・目閉じ笑み・へ
[chara_part name="ajisai_w" eyebrow="komari" eye="toji_emi" mouth="he"]
;[chara_part name="ajisai_w" base="normal" eyebrow="komari" eye="toji_emi" mouth="he" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
あのさ ひどい目に遭ったね[p]


; アジサイ: 通常・ジト目・イー
[chara_part name="ajisai_w" eyebrow="normal" eye="jito" mouth="i"]
;[chara_part name="ajisai_w" base="normal" eyebrow="normal" eye="jito" mouth="i" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
そんなに 歩いてないのに[p]


; アジサイ: 困り・通常・笑み
[chara_part name="ajisai_w" eyebrow="komari" eye="normal" mouth="emi"]
;[chara_part name="ajisai_w" base="normal" eyebrow="komari" eye="normal" mouth="emi" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
なんか ごめんね[p]


;tips：（やっぱ12番目が最凶なのかな）


; アジサイ: 通常・驚き・x
[chara_part name="ajisai_w" eyebrow="normal" eye="odoroki" mouth="x"]
;[chara_part name="ajisai_w" base="normal" eyebrow="normal" eye="odoroki" mouth="x" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
……………………[p]


;tips：（あ！思わず謝っちゃった。もう何がどういうことになってるか ごちゃごちゃしてきた）


; アジサイ: 怒り・驚き・O（汗）
[chara_part name="ajisai_w" eyebrow="okori" eye="odoroki" mouth="o" effect="ase"]
;[chara_part name="ajisai_w" base="normal" eyebrow="okori" eye="odoroki" mouth="o" effect="ase" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
あ！ 違ういやそのあの そう お互いにね！ [r]
11番目なばっかりに！ 的な！[p]


;tips：（何か話して冷静になりたい）


; アジサイ: 通常・驚き・▽（赤面弱）
[chara_part name="ajisai_w" eyebrow="normal" eye="odoroki" mouth="v" effect="akagao_weak"]
;[chara_part name="ajisai_w" base="normal" eyebrow="normal" eye="odoroki" mouth="v" effect="akagao_weak" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
…………………… [r]
占いってね[p]


; アジサイ: 通常・通常・笑み
[chara_part name="ajisai_w" eyebrow="normal" eye="normal" mouth="emi" effect="none"]
;[chara_part name="ajisai_w" base="normal" eyebrow="normal" eye="normal" mouth="emi" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
占いって 別に未来を当てるためじゃなくて [r]
迷ったら使う 位の気持ちで見てたんだ[p]


; アジサイ: 困り・ジト目・むくれ
[chara_part name="ajisai_w" eyebrow="komari" eye="jito" mouth="mukure"]
;[chara_part name="ajisai_w" base="normal" eyebrow="komari" eye="jito" mouth="mukure" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
実際は どっちとも取れることに [r]
自分勝手に善し悪しを重ねてさ[p]


; アジサイ: 通常・目閉じ笑み・▽
[chara_part name="ajisai_w" eyebrow="normal" eye="toji_emi" mouth="v"]
;[chara_part name="ajisai_w" base="normal" eyebrow="normal" eye="toji_emi" mouth="v" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
だから 占いの言ったとおりだー [r]
てなっちゃうんだろうね[p]


;tips：（あんまり思ったこと無いけど）


; アジサイ: 通常・目閉じ笑み・イー
[chara_part name="ajisai_w" eyebrow="normal" eye="toji_emi" mouth="i"]
;[chara_part name="ajisai_w" base="normal" eyebrow="normal" eye="toji_emi" mouth="i" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
今日だって そう[p]


; アジサイ: 通常・通常・O
[chara_part name="ajisai_w" eyebrow="normal" eye="normal" mouth="o"]
;[chara_part name="ajisai_w" base="normal" eyebrow="normal" eye="normal" mouth="o" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
雨の中で 犬に顔を踏まれたかった11番目も [r]
いるかもしれない[p]


; プレイヤー（内心）
#&f.p_name
（…………いるのか？）[p]


; アジサイ: 困り・ジト目・x（汗）
[chara_part name="ajisai_w" eyebrow="komari" eye="jito" mouth="x" effect="ase"]
;[chara_part name="ajisai_w" base="normal" eyebrow="komari" eye="jito" mouth="x" effect="ase" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
…………いないか そんなの[p]


; プレイヤー（内心）
#&f.p_name
（…………風が強くなってきた）[p]


; アジサイ: 困り・目閉じ笑み・へ（赤面弱）
[chara_part name="ajisai_w" eyebrow="komari" eye="toji_emi" mouth="he" effect="akagao_weak"]
;[chara_part name="ajisai_w" base="normal" eyebrow="komari" eye="toji_emi" mouth="he" effect="akagao_weak" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
……………………[p]


;tips：（変て 思われたかな？）


; アジサイ: 通常・目閉じ笑み・むくれ
[chara_part name="ajisai_w" eyebrow="normal" eye="toji_emi" mouth="mukure" effect="none"]
;[chara_part name="ajisai_w" base="normal" eyebrow="normal" eye="toji_emi" mouth="mukure" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
……………………[p]


; アジサイ: 通常・通常・通常
[chara_part name="ajisai_w" eyebrow="normal" eye="normal" mouth="normal"]
;[chara_part name="ajisai_w" base="normal" eyebrow="normal" eye="normal" mouth="normal" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
最後は 傘が壊れる とか言ってたっけ[p]


; アジサイ: 通常・ジト目・へ
[chara_part name="ajisai_w" eyebrow="normal" eye="jito" mouth="he"]
;[chara_part name="ajisai_w" base="normal" eyebrow="normal" eye="jito" mouth="he" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
風で裏返るのか [r]
飛ばされて車に轢かれるのか[p]


; アジサイ: 通常・驚き・x（何かを感じる）
[chara_part name="ajisai_w" eyebrow="normal" eye="odoroki" mouth="x"]
;[chara_part name="ajisai_w" base="normal" eyebrow="normal" eye="odoroki" mouth="x" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
ん？[p]


; TODO 演出: 風・枝・葉っぱ・ゴミ（画像アニメーション）


; アジサイ: 怒り・驚き・うろたえ（転倒！）
[chara_part name="ajisai_w" eyebrow="okori" eye="odoroki" mouth="urotae"]
;[chara_part name="ajisai_w" base="normal" eyebrow="okori" eye="odoroki" mouth="urotae" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
うぎゃあ！[p]


; 歩き立ち絵を下に消す
[chara_hide name="ajisai_w" layer="3" time="200"]

; 背景停止・黒帯消し（転倒で立ち止まる）
[stop_xanim name="walk_bg_loop"]
[hide_letterbox]

; SE: ごろごろ（転倒音）
[playse storage="se_korogoru.wav"]


; プレイヤー（内心）
#&f.p_name
（漫画みたいに転がり回っている）[p]


; SE: 立ち上がる音
[playse storage="se_tachiagaru.wav"]


; 葉・枝が張り付いたフラグ（転倒時に付着）
;[eval exp="f.if_chara_stucked = 1"]
;選択の結果 汚したいのでオミット


; 通常立ち絵に切り替え（怒り・ジト目・へ / bad03=1 で葉・枝パーツ表示）
[chara_part name="ajisai_n" umbrella="none" base="normal" eyebrow="okori" eye="jito" mouth="he" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
[show_ajisai_n]


; プレイヤー（内心）
#&f.p_name
（すぐに立ち上がった）[p]


; SE: 払う音
[playse storage="se_harau.wav"]


; プレイヤー（内心）
#&f.p_name
（スカートを払っている）[p]


; アジサイ: 通常・目閉じ笑み・笑み
[chara_part name="ajisai_n" eyebrow="normal" eye="toji_emi" mouth="emi"]
;[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="toji_emi" mouth="emi" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
何も見てない いいね[p]


;tips：（●にたい ぜったいぱんつみえた）


; プレイヤー（内心）
#&f.p_name
（素直に うなずいておいた……）[p]


; アジサイ: 怒り・ジト目・へ
[chara_part name="ajisai_n" eyebrow="okori" eye="jito" mouth="he"]
;[chara_part name="ajisai_n" base="normal" eyebrow="okori" eye="jito" mouth="he" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
もうすぐ駅だから さっさと行こう[p]


; SE: 傘を開こうとする音（1回目）
[playse storage="se_kasa_open.wav"]


; アジサイ: 通常・通常・通常（傘を開こうとしている）
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="normal"]
;[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="normal" mouth="normal" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
……………………[p]


; SE: 傘を開こうとする音（2回）
[playse storage="se_kasa_open.wav"]
[wait time="300"]
[playse storage="se_kasa_open.wav"]


; アジサイ: 怒り・通常・むくれ
[chara_part name="ajisai_n" eyebrow="okori" eye="normal" mouth="mukure"]
;[chara_part name="ajisai_n" base="normal" eyebrow="okori" eye="normal" mouth="mukure" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
あれ[p]


; SE: 傘を開こうとする音（3回）
[playse storage="se_kasa_open.wav"]
[wait time="200"]
[playse storage="se_kasa_open.wav"]
[wait time="200"]
[playse storage="se_kasa_open.wav"]


; TODO 画像: 壊れた傘アイコン表示


; プレイヤー（内心）
#&f.p_name
（転んだ時だろうか 傘がねじくれ曲がっている）[p]


; アジサイ: 通常・驚き・うろたえ
[chara_part name="ajisai_n" eyebrow="normal" eye="odoroki" mouth="urotae"]
;[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="odoroki" mouth="urotae" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
何これ！ 枝なんかさっきまで無かったじゃん！[p]


; TODO 画像: 壊れた傘アイコン消去


; アジサイ: 困り・通常・通常（汗）
[chara_part name="ajisai_n" eyebrow="komari" eye="normal" mouth="normal" effect="ase"]
;[chara_part name="ajisai_n" base="normal" eyebrow="komari" eye="normal" mouth="normal" effect="ase" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
ああ もう どうしよう [r]
まだ雨ひどいよ？[p]


; アジサイ: 通常・目閉じ笑み・通常（考え込む）
[chara_part name="ajisai_n" eyebrow="normal" eye="toji_emi" mouth="normal" effect="none"]
;[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="toji_emi" mouth="normal" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
……………………[p]


; アジサイ: 通常・驚き・O（気づいた！）
[chara_part name="ajisai_n" eyebrow="normal" eye="odoroki" mouth="o"]
;[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="odoroki" mouth="o" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
！[p]


;tips：（今日 傘 持ってるじゃん！ それ使えばいいじゃんね………… あれ）


; プレイヤー（内心）
#&f.p_name
（？）[p]


; アジサイ: 困り・通常・むくれ
[chara_part name="ajisai_n" eyebrow="komari" eye="normal" mouth="mukure"]
;[chara_part name="ajisai_n" base="normal" eyebrow="komari" eye="normal" mouth="mukure" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
あ[p]


; プレイヤー（内心）
#&f.p_name
（？？？）[p]


;tips：（赤い傘 持ってるのわかったら なんて言うかな。11番目でも無かったし なんのために て 聞かれるのかな）


; アジサイ: 困り・驚き・x（汗）
[chara_part name="ajisai_n" eyebrow="komari" eye="odoroki" mouth="x" effect="ase"]
;[chara_part name="ajisai_n" base="normal" eyebrow="komari" eye="odoroki" mouth="x" effect="ase" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
あ いや その[p]


;tips：（そもそも どうしてそんな嘘 ついたんだっけ？ あれ？ 言っちゃいけなかった？ どうしようどうしようどうしよう 落ち着けないよ）


; プレイヤー（内心）
#&f.p_name
（どうしたのだろう 逡巡しているようだ）[p]

#&f.p_name
（…………雨は降り続いている）[p]


; BGM: 雨の音 FO
[fadeoutbgm time="1000"]


; ⑧選択肢◆（走る → 11_route_a / コンビニ → 12_route_b）
[glink text="駅まで走ろう！ 先月からダイエットしてるんだった！" size="24" color="white" x="120" y="220" width="1040" storage="scene/11_route_a.ks"]
[glink text="コンビニで新しいの買ってくる。軒下で待ってて"       size="24" color="white" x="120" y="320" width="1040" storage="scene/12_route_b.ks"]
[s]
