;=============================================================
; 20_gate_common.ks  改札前（共通）〜ED分岐
; ← 11_route_a.ks（Aルート） / 13_route_b_green.ks（Bルート緑）
;=============================================================

[bg storage="bg_eki_kaisatsu.jpg" time="300"]
[chara_show name="ajisai" time="400"]
[cm]
【20_gate_common: 改札前（共通）— AルートまたはBルート緑から合流】[p]
; キャラ：占いの話（迷ったとき誰かに言ってもらいたいことがある、それが占いでもいい）

; ED分岐
;
; chara_saved の取りうる値（③⑥⑧Aの選択のみ加算、最大3）:
;   ③A + ⑥A + ⑧A → 3   (全部キャラがひどい目 = EDa)
;   それ以外で1 or 2   → EDb
;   ③B + ⑥B + ⑧B緑  → 0   (全部プレイヤーが犠牲 = EDc)
;
; ※ Bルート赤（⑧B赤）は17_quizへ進むためここには来ない
; ※ ⑧A（走る）を選んだ時点でchara_savedは最低1になるため
;    chara_saved==0 はBルート緑（コンビニ+緑の傘）からのみ到達可

【20_gate_common: ED分岐 — chara_saved==3→EDa / chara_saved==0→EDc / その他→EDb】[p]
; EDa：全員がひどい目（chara_saved==3）
[jump storage="scene/21_ed_a.ks" cond="f.chara_saved==3"]

; EDc：自己犠牲コンプ（chara_saved==0）
[jump storage="scene/23_ed_c.ks" cond="f.chara_saved==0"]

; EDb：それ以外（chara_saved==1 or 2）
[jump storage="scene/22_ed_b.ks"]

[s]
