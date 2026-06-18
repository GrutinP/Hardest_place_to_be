;=============================================================
; 21_ed_a.ks  EDa：キャラに守られ続けた（Aルート・chara_saved>=3）
; ← 20_gate_common.ks
;=============================================================

[cm]
【21_ed_a: EDa — ヒロインだけがひどい目に遭い続けたED (chara_saved==3)】[p]
; キャラ：「一緒に帰るの誘って良かった」
;         「何もしないで起きることが不幸だから、今日は不幸じゃ無かった」
;         「このこと言うのは変だから、いつか言う」

[chara_hide name="ajisai" time="500"]

; ⑩EDa影響なし
【21_ed_a: 選択肢⑩EDa — 別れの言葉（影響なし）】[p]
[glink text="それじゃあね"       size="28" color="white" x="280" y="220" width="720" target="*eda_fin"]
[glink text="気をつけて帰ってね" size="28" color="white" x="280" y="320" width="720" target="*eda_fin"]
[s]

*eda_fin
[cm]

; キャラ：「んじゃ またね」

[bg storage="black.jpg" time="1000"]
[wait time="500"]
[cm]

;[bgm storage="" time="500"]

・EDa・[l][cm]

[jump storage="title.ks"]

[s]
