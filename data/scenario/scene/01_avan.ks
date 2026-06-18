;=============================================================
; 01_avan.ks  アバン：名前入力・星座選択
; ← 00_init.ks
;=============================================================

[cm]
【01_avan: 名前入力・星座選択】[p]
; 名前入力
[layopt layer="message0" visible="false"]
[dialog type="input" name="f.p_name" text="あなたの名前を入力してください" label_ok="決定"]
[layopt layer="message0" visible="true"]
[cm]

; 星座選択UI
[layopt layer="message0" visible="false"]

[glink text="牡羊座" size="28" color="white" x="80"  y="180" width="230" target="*seiza_01"]
[glink text="牡牛座" size="28" color="white" x="330" y="180" width="230" target="*seiza_02"]
[glink text="双子座" size="28" color="white" x="580" y="180" width="230" target="*seiza_03"]
[glink text="蟹座"   size="28" color="white" x="830" y="180" width="230" target="*seiza_04"]

[glink text="獅子座" size="28" color="white" x="80"  y="300" width="230" target="*seiza_05"]
[glink text="乙女座" size="28" color="white" x="330" y="300" width="230" target="*seiza_06"]
[glink text="天秤座" size="28" color="white" x="580" y="300" width="230" target="*seiza_07"]
[glink text="蠍座"   size="28" color="white" x="830" y="300" width="230" target="*seiza_08"]

[glink text="射手座" size="28" color="white" x="80"  y="420" width="230" target="*seiza_09"]
[glink text="山羊座" size="28" color="white" x="330" y="420" width="230" target="*seiza_10"]
[glink text="水瓶座" size="28" color="white" x="580" y="420" width="230" target="*seiza_11"]
[glink text="魚座"   size="28" color="white" x="830" y="420" width="230" target="*seiza_12"]

[s]

*seiza_01
[eval exp="f.p_sign=1"]
[jump target="*seiza_done"]
*seiza_02
[eval exp="f.p_sign=2"]
[jump target="*seiza_done"]
*seiza_03
[eval exp="f.p_sign=3"]
[jump target="*seiza_done"]
*seiza_04
[eval exp="f.p_sign=4"]
[jump target="*seiza_done"]
*seiza_05
[eval exp="f.p_sign=5"]
[jump target="*seiza_done"]
*seiza_06
[eval exp="f.p_sign=6"]
[jump target="*seiza_done"]
*seiza_07
[eval exp="f.p_sign=7"]
[jump target="*seiza_done"]
*seiza_08
[eval exp="f.p_sign=8"]
[jump target="*seiza_done"]
*seiza_09
[eval exp="f.p_sign=9"]
[jump target="*seiza_done"]
*seiza_10
[eval exp="f.p_sign=10"]
[jump target="*seiza_done"]
*seiza_11
[eval exp="f.p_sign=11"]
[jump target="*seiza_done"]
*seiza_12
[eval exp="f.p_sign=12"]
[jump target="*seiza_done"]

*seiza_done

; プレイヤーが魚座(12)なら、キャラを乙女座(6)に変更（対極・示唆）
; それ以外はキャラ魚座(12)のまま（00_initの初期値）
[if exp="f.p_sign==12"]
[eval exp="f.c_sign=6"]
[endif]

[layopt layer="message0" visible="true"]
[cm]

[jump storage="scene/02_opening.ks"]

[s]
