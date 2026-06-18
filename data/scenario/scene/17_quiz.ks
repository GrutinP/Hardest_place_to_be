;=============================================================
; 17_quiz.ks  クイズ分岐入口
; ← 15_route_b_red_yes.ks / 16_route_b_red_no.ks
;=============================================================

[cm]
【17_quiz: chara_saved分岐 — 0→18_quiz_main（クイズ） / 1以上→24_ed_1】[p]
; 自己犠牲コンプ判定：
;   chara_saved == 0 = ③B + ⑥B（ともにプレイヤーが犠牲）
;   chara_saved >  0 = 途中でアジサイがひどい目に遭った選択あり
[jump storage="scene/18_quiz_main.ks" cond="f.chara_saved==0"]
[jump storage="scene/24_ed_1.ks"]

[s]
