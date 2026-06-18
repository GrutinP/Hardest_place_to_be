;=============================================================
; 08_bad02_a.ks  ⑥A：右に交わす → キャラが犬に飛びかかられる
; ← 07_bad02.ks（選択肢⑥）
;=============================================================

[cm]
【08_bad02_a: ⑥A「右に交わす」→ ヒロインが犬に飛びかかられる / f.chara_saved++ / f.if_chara_stomped=1 未実装】[p]
; キャラを守ったカウント（キャラがひどい目）
[eval exp="f.chara_saved++"]

;[se storage="TODO_se_dog_bark.ogg"]

; 立ち絵：犬足跡状態
[chara_mod name="ajisai" face="dog"]

; ナレーション：キャラに犬が飛びかかった、顔をなめ回されている

; ⑦A影響なし
【08_bad02_a: 選択肢⑦A — 勝ったの？負けたの？（影響なし）→ 10_bad03へ】[p]
[glink text="勝ったの？" size="28" color="white" x="280" y="220" width="720" target="*choice7a_cont"]
[glink text="負けたの？" size="28" color="white" x="280" y="320" width="720" target="*choice7a_cont"]
[s]

*choice7a_cont
[cm]

; キャラ：「立ち向かったことを評価して」と強がる

[bg storage="black.jpg" time="500"]
[wait time="200"]

[jump storage="scene/10_bad03.ks"]

[s]
