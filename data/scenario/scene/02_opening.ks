;=============================================================
; 02_opening.ks  オープニング：テレビの星座占いコーナー
; ← 01_avan.ks
;=============================================================

[cm]
[bg storage="bg_tv.jpg" time="500"]
【02_opening: テレビの星座占いコーナー（暗転→03_prologueへ）】[p]

;[bgm storage="TODO_bgm_tv.ogg" loop="true" time="1000"]

; セリフ：テレビ占いコーナー（ダミー10番目→フェード）
; セリフ：11番目 ['..'][f.p_sign-1] → 車・犬・傘の予言・素敵な出会い
; セリフ：最下位 ['..'][f.c_sign-1] → 外出るな・ラッキーアイテム赤い傘

;[se storage="TODO_se_tv_off.ogg"]

[bg storage="black.jpg" time="500"]
[wait time="300"]

[jump storage="scene/03_prologue.ks"]

[s]
