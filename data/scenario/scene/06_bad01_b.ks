;=============================================================
; 06_bad01_b.ks  ③B：道路に近づく → プレイヤーが水をかぶる
; ← 04_bad01.ks（選択肢③）
;=============================================================

; TODO トラックアイコン消去

; 歩き立ち絵消去
[chara_hide name="ajisai_w" layer="3" time="500"]


; TODO SE 水しぶき
; TODO 画像 水しぶき　右から左へ
; TODO 画像 水しぶき 消去

; 通常立ち絵
[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="odoroki" mouth="he" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
[show_ajisai_n time="500"]


[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="odoroki" mouth="mukure" effect="akagao_weak" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
ええええええええぇぇぇぇっっ？？？？！！！！[p]


[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="normal" mouth="mukure" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
なになに どうしたの！？ [r]
大丈夫！？ 色々どした！？

[wait time="500"]


; ④B影響なし
[glink text="ちょうど シャワーを浴びたかったんだ"              size="26" color="white" x="190" y="220" width="900" target="*choice4b_cont"]
[glink text="この時間はいつもなら お風呂に入っているからね" size="26" color="white" x="190" y="320" width="900" target="*choice4b_cont"]
[s]


*choice4b_cont


[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="jito" mouth="normal" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
……………………[p]


[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="jito" mouth="o" effect="akagao_weak" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
…………はぁ そすか[p]


; tips （わざとなんだろうな。そういうとこだよ）


[chara_part name="ajisai_n" base="normal" eyebrow="komari" eye="toji_emi" mouth="mukure" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
……………………[p]


[chara_part name="ajisai_n" base="normal" eyebrow="okori" eye="jito" mouth="urotae" effect="ase" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
いや 厳しいって その返しは[p]


; 立ち絵消去
[chara_hide name="ajisai_n" layer="3" time="500" wait="true"]


#&f.p_name
（…………みずびたしになった）[p]


;背景消去 スクロール背景をそのまま使ってるからそれを消す
[erase_walk_bg]


[freeimage layer="0" page="fore" time="500"]

[bg storage="black.jpg" time="500"]
[wait time="200"]

[jump storage="scene/07_bad02.ks"]

[s]
