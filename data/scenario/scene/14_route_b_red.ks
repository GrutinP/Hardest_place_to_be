;=============================================================
; 14_route_b_red.ks  Bルート赤：赤い傘を買った〜選択肢⑩
; ← 12_route_b.ks（選択肢⑨B：赤い傘）
;=============================================================

[cm]
【14_route_b_red: Bルート赤 — 赤い傘購入 → ヒロインが絶句】[p]
; ルート識別（tf＝一時変数）
[eval exp="tf.route='b_red'"]

; ナレーション：赤い傘購入、壊れた傘を店員が引き取った、戻る

; キャラが赤い傘を見て絶句（12位のラッキーアイテムだから）
[chara_show name="ajisai" face="umbrella_red" time="500"]

; キャラ：「知ってた…の……？」

; ⑩分岐（「はい」→ネタばらし / 「いいえ」→慌て）
【14_route_b_red: 選択肢⑩◆ — はい（→15_yes） / いいえ（→16_no）】[p]
[glink text="はい" size="36" color="white" x="430" y="260" width="200" storage="scene/15_route_b_red_yes.ks"]
[glink text="いいえ" size="36" color="white" x="650" y="260" width="200" storage="scene/16_route_b_red_no.ks"]
[s]
