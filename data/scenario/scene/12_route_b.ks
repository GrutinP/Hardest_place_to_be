;=============================================================
; 12_route_b.ks  ⑧B：コンビニへ〜傘の色選択⑨◆B
; ← 10_bad03.ks（選択肢⑧B）
; → 13_route_b_green.ks（緑） / 14_route_b_red.ks（赤）
; 引き継ぎ: ajisai_n表示中 / 街背景（walk BG停止中layer="0"）/ 雨あり / BGMなし
;=============================================================

[cm]

; アジサイ: 困り・目閉じ・へ（一瞬 止めようとする）
[chara_part name="ajisai_n" eyebrow="komari" eye="toji" mouth="he" effect="none"]
;[chara_part name="ajisai_n" base="normal" eyebrow="komari" eye="toji" mouth="he" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
そうだね[p]


; アジサイ: 困り・通常・x
[chara_part name="ajisai_n" eyebrow="komari" eye="normal" mouth="x"]
;[chara_part name="ajisai_n" base="normal" eyebrow="komari" eye="normal" mouth="x" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
……………………[p]


;tips：（いま なんていった？）


; アジサイ: 通常・驚き・へ
[chara_part name="ajisai_n" eyebrow="normal" eye="odoroki" mouth="he"]
;[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="odoroki" mouth="he" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
…………そうだね？[p]


; アジサイ: 怒り・通常・うろたえ
[chara_part name="ajisai_n" eyebrow="okori" eye="normal" mouth="urotae"]
;[chara_part name="ajisai_n" base="normal" eyebrow="okori" eye="normal" mouth="urotae" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
いや いやいや そんなの悪いよ[p]


; アジサイ: 困り・通常・むくれ
[chara_part name="ajisai_n" eyebrow="komari" eye="normal" mouth="mukure"]
;[chara_part name="ajisai_n" base="normal" eyebrow="komari" eye="normal" mouth="mukure" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
あの 実は その…………[p]


;tips：（そんなのダメ。いくらなんでも。もう言わなきゃ言わなきゃ言わなきゃ）


; アジサイ: 通常・驚き・O（プレイヤーがもう行ってしまった）
[chara_part name="ajisai_n" eyebrow="normal" eye="odoroki" mouth="o"]
;[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="odoroki" mouth="o" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
…………て おーい！[p]




; 立ち絵消去・背景消去・雨消去（コンビニへ）
[chara_hide name="ajisai_n" layer="3" time="200"]
[hide_rain]
[freeimage layer="0" page="fore"]



; プレイヤー（内心）
#&f.p_name
（彼女を置いて 近くのコンビニに入った）[p]


; SE: コンビニ入店（TODO ファイル名未定・仮素材未作成）
;[playse storage="se_conbini_enter.wav"]


; コンビニ背景
[bg storage="bg_conbini.jpg" time="300"]


; プレイヤー（内心）
#&f.p_name
（雨だからか 傘はほとんど在庫がない）[p]


#&f.p_name
（だが 幸い 残っている傘の片方は緑）[p]


#&f.p_name
（もうひとつは 赤い傘だ）[p]


[wait time="300"]


#&f.p_name
（残念ながら 2本買うほどの財源が無い）[r]
（どちらにする？）


[wait time="500"]


; ⑨◆B 選択肢（傘の色 → 分岐）
[glink text="緑の傘を買う" size="32" color="white" x="340" y="220" width="600" storage="scene/13_route_b_green.ks"]
[glink text="赤い傘を買う" size="32" color="white" x="340" y="340" width="600" storage="scene/14_route_b_red.ks"]
[s]
