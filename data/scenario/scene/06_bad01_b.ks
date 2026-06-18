;=============================================================
; 06_bad01_b.ks  ③B：道路に近づく → プレイヤーが水をかぶる
; ← 04_bad01.ks（選択肢③）
;=============================================================

[cm]
【06_bad01_b: ③B「道路に近づく」→ プレイヤーが水しぶきを被る / chara_saved加算なし】[p]
; （f.chara_saved は加算しない：キャラは被害を受けていない）

;[se storage="TODO_se_splash.ogg"]

; ナレーション：プレイヤーがずぶ濡れ（キャラは無事）

; ④B影響なし
【06_bad01_b: 選択肢④B — シャワー発言（影響なし）→ 07_bad02へ】[p]
[glink text="ちょうど シャワーを浴びたかったんだ"              size="26" color="white" x="190" y="220" width="900" target="*choice4b_cont"]
[glink text="この時間はいつもなら お風呂に入っているからね" size="26" color="white" x="190" y="320" width="900" target="*choice4b_cont"]
[s]

*choice4b_cont
[cm]

; キャラ：あっけにとられている

[bg storage="black.jpg" time="500"]
[wait time="200"]

[jump storage="scene/07_bad02.ks"]

[s]
