;=============================================================
; 25_true_end.ks  真エンド
; ← 18_quiz_main.ks（tf.quiz_answer == f.c_sign）
;=============================================================

[cm]
【25_true_end: 真END — 改札の外・赤い折りたたみ傘の中・無言スチル】[p]
; このエンドのみ改札の外・同じ傘（赤い折りたたみ傘）の中
; 無言・ボイスなし・BGMは雨音のみ
; 立ち絵の切り替えだけで進行（[ba][bb][bc]の内心は表示しない）

[chara_show name="ajisai" face="umbrella_red" time="500"]

;[bgm storage="TODO_bgm_true_end.ogg" time="1000"]
;[se  storage="TODO_se_ame_loop.ogg" loop="true"]

; 立ち絵切り替え × 3（[ba][bb][bc]の場面）

; TODO：スチルCG差し替え
;[image layer="0" storage="TODO_cg_true_end.png" page="fore" visible="true"]

[bg storage="black.jpg" time="2000"]
[wait time="500"]
[cm]

;[bgm storage="" time="1000"]

・True END・[l][cm]

[jump storage="title.ks"]

[s]
