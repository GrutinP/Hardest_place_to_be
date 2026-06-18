;=============================================================
; 05_bad01_a.ks  ③A：道路から離れる → キャラが水をかぶる
; ← 04_bad01.ks（選択肢③）
;=============================================================

[cm]
【05_bad01_a: ③A「道路から離れる」→ ヒロインが水しぶきを被る / f.chara_saved++ / f.if_chara_splashed=1 未実装】[p]
; キャラを守ったカウント（キャラがひどい目）
[eval exp="f.chara_saved++"]

;[se storage="TODO_se_splash.ogg"]

; 立ち絵：水濡れ状態
[chara_mod name="ajisai" face="wet"]

; ナレーション：激しい水しぶき、キャラが水を浴びた

; ④A影響なし
【05_bad01_a: 選択肢④A — 大丈夫？（影響なし）→ 07_bad02へ】[p]
[glink text="大丈夫？"               size="28" color="white" x="280" y="220" width="720" target="*choice4a_cont"]
[glink text="ひどい目に遭ってるね" size="28" color="white" x="280" y="320" width="720" target="*choice4a_cont"]
[s]

*choice4a_cont
[cm]

; キャラ：水を被ったが機嫌よく、行こうと促す

[bg storage="black.jpg" time="500"]
[wait time="200"]

[jump storage="scene/07_bad02.ks"]

[s]
