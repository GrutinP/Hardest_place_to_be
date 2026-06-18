;=============================================================
; 23_ed_c.ks  EDc：プレイヤーの優しさに気づいているキャラ
; ← 20_gate_common.ks（Bルート緑・chara_saved<=1）
;=============================================================

[cm]
【23_ed_c: EDc — プレイヤーだけがひどい目に遭い続けたED (chara_saved==0)】[p]
; キャラ：「何のことかわからないと思うけど」
;         「そのままでいてよね」（プレイヤーが自分を守り続けたことへの感謝・伝えない）

[chara_hide name="ajisai" time="500"]

; ⑩EDc：「また明日」→ キャラが反応（次がある意味の挨拶に気づく）
【23_ed_c: 選択肢⑩EDc — 「また明日」選択でキャラが反応 / 「またね」は普通に終わる】[p]
[glink text="それじゃあ また明日" size="28" color="white" x="280" y="220" width="720" target="*edc_a"]
[glink text="またね"               size="28" color="white" x="280" y="320" width="720" target="*edc_fin"]
[s]

*edc_a
[cm]
; キャラ：「！」→ 沈黙（また会える前提の挨拶に反応）
[chara_show name="ajisai" time="300"]
[chara_hide name="ajisai" time="500"]
[jump target="*edc_fin"]

*edc_fin
[cm]

; キャラ：「んじゃ またね」

[bg storage="black.jpg" time="1000"]
[wait time="500"]
[cm]

;[bgm storage="" time="500"]

・EDc・[l][cm]

[jump storage="title.ks"]

[s]
