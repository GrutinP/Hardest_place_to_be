;=============================================================
; 05_bad01_a.ks  ③A：道路から離れる → キャラが水をかぶる
; ← 04_bad01.ks（選択肢③）
;=============================================================

; キャラがプレイヤーを守った変数 +1
[eval exp="f.chara_saved = f.chara_saved + 1"]


; TODO トラックアイコン消去　どっちかに走って行く
; TODO 水しぶきのSE
; キャラの眉（通常）目（目閉じ笑み）口（▽）を画像として水しぶきの手前に出す
; TODO 画像　水しぶき　水が流れるエフェクト

;水しぶきを適応
[eval exp="f.if_chara_splashed = 1"]
;立ち絵を更新
[chara_part name="ajisai_w" base="normal" eyebrow="normal" eye="toji_emi" mouth="v" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]

; TODO 画像 水しぶき 消去


; ④A影響なし
;【05_bad01_a: 選択肢④A — 大丈夫？（影響なし）→ 07_bad02へ】


[chara_part name="ajisai_w" base="normal" eyebrow="normal" eye="toji_emi" mouth="v" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]

#&f.c_name
……………………

[wait time="500"]

[glink text="大丈夫？"               size="28" color="white" x="280" y="220" width="720" target="*choice4a_cont"]
[glink text="ひどい目に遭ってるね" size="28" color="white" x="280" y="320" width="720" target="*choice4a_cont"]

[s]

*choice4a_cont


; 歩き立ち絵から通常立ち絵に
[chara_hide name="ajisai_w" layer="3" time="500"]
[chara_part name="ajisai_n" umbrella="none" base="normal" eyebrow="okori" eye="toji_emi" mouth="v" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
[show_ajisai_n time="500"]


[chara_part name="ajisai_n" base="normal" eyebrow="okori" eye="toji_emi" mouth="v" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
……………………[p]


[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="jito" mouth="emi" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
まあまあ あのトラックにも 占いにも [r]
何の罪もないことは わかってるねん[p]


#&f.p_name
（ねん？）[p]


[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="toji_emi" mouth="v" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
いいの [r]
今日の私は 機嫌がいいから許しちゃう[p]


[chara_part name="ajisai_n" base="normal" eyebrow="okori" eye="jito" mouth="i" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
さあ とっとこ 行きましょう[p]

;tips：（よかった 無事みたいで）


; TODO SE 足音

; キャラの星座が魚座なら右に移動する
[if exp="f.c_sign == 12"]
; 移動 右
    [chara_move name="ajisai_n" left="+=700" anim="true" time="750" effect="easeInOutCubic"]
[else]
; 移動　左
    [chara_move name="ajisai_n" left="-=700" anim="true" time="750" effect="easeInOutCubic"]
[endif]

; 非表示
[chara_hide name="ajisai_n" layer="3" wait="false"]

#&f.p_name
（……………………）[p]

#&f.p_name
（とっとこ？）[p]

#&f.p_name
（…………みずびたしになった この子が）[p]

;背景消去 スクロール背景をそのまま使ってるからそれを消す
[erase_walk_bg]

[freeimage layer="0" page="fore" time="500"]

[bg storage="black.jpg" time="500"]
[wait time="200"]

[jump storage="scene/07_bad02.ks"]

[s]
