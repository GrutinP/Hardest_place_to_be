;=============================================================
; 18_quiz_main.ks  星座クイズ本体
; ← 17_quiz.ks（chara_saved<=1 の場合）
;=============================================================

[cm]
【18_quiz_main: 星座クイズ — ヒロインの星座を当てる（f.c_sign と一致→25_true_end / 不一致→19_wrong）】[p]
; キャラ：「私の星座 当ててみて」

[layopt layer="message0" visible="false"]

; 12星座の選択肢（番号で管理）
[glink text="牡羊座" size="24" color="white" x="80"  y="100" width="230" target="*q_01"]
[glink text="牡牛座" size="24" color="white" x="330" y="100" width="230" target="*q_02"]
[glink text="双子座" size="24" color="white" x="580" y="100" width="230" target="*q_03"]
[glink text="蟹座"   size="24" color="white" x="830" y="100" width="230" target="*q_04"]
[glink text="獅子座" size="24" color="white" x="80"  y="200" width="230" target="*q_05"]
[glink text="乙女座" size="24" color="white" x="330" y="200" width="230" target="*q_06"]
[glink text="天秤座" size="24" color="white" x="580" y="200" width="230" target="*q_07"]
[glink text="蠍座"   size="24" color="white" x="830" y="200" width="230" target="*q_08"]
[glink text="射手座" size="24" color="white" x="80"  y="300" width="230" target="*q_09"]
[glink text="山羊座" size="24" color="white" x="330" y="300" width="230" target="*q_10"]
[glink text="水瓶座" size="24" color="white" x="580" y="300" width="230" target="*q_11"]
[glink text="魚座"   size="24" color="white" x="830" y="300" width="230" target="*q_12"]
[s]

; 選択した星座番号を tf.quiz_answer にセット → 正誤判定へ
*q_01
[eval exp="tf.quiz_answer=1"]
[jump target="*quiz_check"]
*q_02
[eval exp="tf.quiz_answer=2"]
[jump target="*quiz_check"]
*q_03
[eval exp="tf.quiz_answer=3"]
[jump target="*quiz_check"]
*q_04
[eval exp="tf.quiz_answer=4"]
[jump target="*quiz_check"]
*q_05
[eval exp="tf.quiz_answer=5"]
[jump target="*quiz_check"]
*q_06
[eval exp="tf.quiz_answer=6"]
[jump target="*quiz_check"]
*q_07
[eval exp="tf.quiz_answer=7"]
[jump target="*quiz_check"]
*q_08
[eval exp="tf.quiz_answer=8"]
[jump target="*quiz_check"]
*q_09
[eval exp="tf.quiz_answer=9"]
[jump target="*quiz_check"]
*q_10
[eval exp="tf.quiz_answer=10"]
[jump target="*quiz_check"]
*q_11
[eval exp="tf.quiz_answer=11"]
[jump target="*quiz_check"]
*q_12
[eval exp="tf.quiz_answer=12"]
[jump target="*quiz_check"]

*quiz_check
[layopt layer="message0" visible="true"]
[cm]

; 正誤判定：tf.quiz_answer（番号）== f.c_sign（番号）なら真ED
; f.c_sign = 12（魚座）、プレイヤーが魚座の場合は 6（乙女座）
[jump storage="scene/25_true_end.ks" cond="tf.quiz_answer==f.c_sign"]
[jump storage="scene/19_quiz_wrong.ks"]

[s]
