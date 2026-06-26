;=============================================================
; 01_avan.ks  アバン：名前入力・星座選択
; ← 00_init.ks
;=============================================================

[cm]





;テスト
/*
[cm]
[clearstack]
;[bg storage="bg_ame_michi.jpg" time="300"]
[start_walk_bg]
[show_letterbox]
[layopt layer="message0" visible="false"]
[show_rain]
[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="normal" mouth="normal" effect="none" bad01="0" bad02="0" bad03="0"]
;[chara_show name="ajisai_n" layer="3" time="500"]
[show_ajisai_n time="500"]
[s]
*/




[popopo type="none"]
[popopo type="file" time="10" tailtime="30" mode="everyone" storage="popopo_custom.mp3" buf="1"]
; mode="interval" interval="50" 

; 名前入力
あなたの 名前を 入力してください[r]
全半角10文字まで

; 0文字だったらやりなおし
[edit name="f.p_name" left="390" top="270" width="500" height="52" size="26" maxchars="10" autocomplete="false"]
[glink text="決定" size="26" color="white" x="605" y="350" width="130" target="*name_done" cm="false"]
[s]

*name_done
[commit]
[cm]

; 星座選択UI
;[layopt layer="message0" visible="false"]

あなたの 星座を 選択してください

[glink text="おひつじ座" size="28" color="white" x="80"  y="180" width="230" target="*seiza_01"]
[glink text="おうし座"   size="28" color="white" x="330" y="180" width="230" target="*seiza_02"]
[glink text="ふたご座"   size="28" color="white" x="580" y="180" width="230" target="*seiza_03"]
[glink text="かに座"     size="28" color="white" x="830" y="180" width="230" target="*seiza_04"]

[glink text="しし座"     size="28" color="white" x="80"  y="300" width="230" target="*seiza_05"]
[glink text="おとめ座"   size="28" color="white" x="330" y="300" width="230" target="*seiza_06"]
[glink text="てんびん座" size="28" color="white" x="580" y="300" width="230" target="*seiza_07"]
[glink text="さそり座"   size="28" color="white" x="830" y="300" width="230" target="*seiza_08"]

[glink text="いて座"     size="28" color="white" x="80"  y="420" width="230" target="*seiza_09"]
[glink text="やぎ座"     size="28" color="white" x="330" y="420" width="230" target="*seiza_10"]
[glink text="みずがめ座" size="28" color="white" x="580" y="420" width="230" target="*seiza_11"]
[glink text="うお座"     size="28" color="white" x="830" y="420" width="230" target="*seiza_12"]

[s]

*seiza_01
; おひつじ座
[eval exp="f.p_sign=1"]
[jump target="*seiza_done"]

*seiza_02
; おうし座
[eval exp="f.p_sign=2"]
[jump target="*seiza_done"]

*seiza_03
; ふたご座
[eval exp="f.p_sign=3"]
[jump target="*seiza_done"]

*seiza_04
; かに座
[eval exp="f.p_sign=4"]
[jump target="*seiza_done"]

*seiza_05
; しし座
[eval exp="f.p_sign=5"]
[jump target="*seiza_done"]

*seiza_06
; おとめ座
[eval exp="f.p_sign=6"]
[jump target="*seiza_done"]

*seiza_07
; てんびん座
[eval exp="f.p_sign=7"]
[jump target="*seiza_done"]

*seiza_08
; さそり座
[eval exp="f.p_sign=8"]
[jump target="*seiza_done"]

*seiza_09
; いて座
[eval exp="f.p_sign=9"]
[jump target="*seiza_done"]

*seiza_10
; やぎ座
[eval exp="f.p_sign=10"]
[jump target="*seiza_done"]

*seiza_11
; みずがめ座
[eval exp="f.p_sign=11"]
[jump target="*seiza_done"]

*seiza_12
; うお座
[eval exp="f.p_sign=12"]
[jump target="*seiza_done"]

*seiza_done
[layopt layer="message0" visible="true"]

; プレイヤーが魚座(12)ならキャラを乙女座(6)に変更
[eval exp="f.c_sign = (f.p_sign==12) ? 6 : 12"]

[bg storage="black.jpg" time="500"]
[wait time="200"]

[jump storage="scene/02_opening.ks"]

[s]
