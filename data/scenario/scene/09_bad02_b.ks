;=============================================================
; 09_bad02_b.ks  ⑥B：ぽち！ → プレイヤーが犬に踏まれる
; ← 07_bad02.ks（選択肢⑥）
;=============================================================

[cm]
【09_bad02_b: ⑥B「ぽち！」→ プレイヤーが犬に踏まれる / chara_saved加算なし】[p]
; （f.chara_saved は加算しない：キャラは被害を受けていない）

;[se storage="TODO_se_dog_bark.ogg"]

; ナレーション：プレイヤーが飛びかかられて転んだ、顔を踏まれた（キャラは無事）

; ⑦B影響なし
【09_bad02_b: 選択肢⑦B — 知らない（影響なし）→ 10_bad03へ】[p]
[glink text="いや、知らない"             size="28" color="white" x="280" y="220" width="720" target="*choice7b_cont"]
[glink text="犬に知り合いなんていないし" size="28" color="white" x="280" y="320" width="720" target="*choice7b_cont"]
[s]

*choice7b_cont
[cm]

; キャラ：ドン引きしている

[bg storage="black.jpg" time="500"]
[wait time="200"]

[jump storage="scene/10_bad03.ks"]

[s]
