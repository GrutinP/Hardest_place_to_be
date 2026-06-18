;=============================================================
; 07_bad02.ks  2つめの不幸：犬の登場〜選択肢⑥
; ← 05_bad01_a.ks / 06_bad01_b.ks
;=============================================================

[bg storage="bg_ame_michi.jpg" time="500"]
[chara_show name="ajisai" time="500"]
[cm]
【07_bad02: 2つめの不幸 — 大型犬登場】[p]
; ナレーション：雨が続いている、駅まで遠い
; キャラ：予言の自己成就の話、次は犬だが来るわけないと油断

;[se storage="TODO_se_dog_run.ogg"]

; ナレーション：犬の息づかいが聞こえる……→ 大型犬がこちらに向かってくる！

; ⑤影響なし
【07_bad02: 選択肢⑤ — 予言の自己成就（影響なし）】[p]
[glink text="信じると当たる？"                   size="28" color="white" x="280" y="220" width="720" target="*choice5_cont"]
[glink text="じゃあトラックが通ったのも……" size="28" color="white" x="280" y="320" width="720" target="*choice5_cont"]
[s]

*choice5_cont
[cm]

; キャラ：犬来るわけない言ったら来た！

; ⑥分岐（右に避ける→キャラが踏まれる / ぽち→プレイヤーが踏まれる）
【07_bad02: 選択肢⑥◆ — 右に交わす（→08） / ぽち！（→09）】[p]
[glink text="右に交わす（左にはキャラがいる）"                        size="26" color="white" x="190" y="220" width="900" storage="scene/08_bad02_a.ks"]
[glink text="ぽち！　ぽちじゃないか！！　探したんだぞ！！！" size="26" color="white" x="190" y="320" width="900" storage="scene/09_bad02_b.ks"]
[s]
