;=============================================================
; 03_prologue.ks  序幕：雨宿り→キャラ登場→歩き始める
; ← 02_opening.ks
;=============================================================

[bg storage="bg_ame_yane.jpg" time="500"]
[cm]
【03_prologue: 序幕 — 雨宿り・ヒロイン登場〜歩き始める】[p]
;[bgm storage="TODO_bgm_ame.ogg" loop="true" time="2000"]
;[se  storage="TODO_se_ame_loop.ogg" loop="true"]

; ナレーション：ひどい雨で動けない
; キャラ（オフ）：あの

; キャラ登場（距離を取った演出）→ 通常立ち絵に切り替え
[chara_show name="ajisai" time="500"]

; キャラ：傘忘れたの？

; ①影響なし
【03_prologue: 選択肢① — 傘を忘れた言い訳（影響なし）】[p]
[glink text="本当に降るとは 思わなくて" size="28" color="white" x="280" y="220" width="720" target="*choice1_cont"]
[glink text="運が悪かった"               size="28" color="white" x="280" y="320" width="720" target="*choice1_cont"]
[s]

*choice1_cont
[cm]
[chara_mod name="ajisai" face="red"]

; キャラ：赤面。でも冷静に話しかけてくる
; キャラ：プレイヤーの星座を知っていた → 11番目だったっけ
; セリフ中: f.p_sign の名前を表示
;   [emb exp="(['牡羊座','牡牛座','双子座','蟹座','獅子座','乙女座','天秤座','蠍座','射手座','山羊座','水瓶座','魚座'][f.p_sign-1])"]

; キャラ：わたしも同じ星座（嘘。実際は12位）

[chara_mod name="ajisai" face="default"]

; ②影響なし（甘納豆の誤魔化し）
【03_prologue: 選択肢② — 甘納豆エピソード（影響なし）→ 相合傘で出発】[p]
[glink text="…………なんて？"                    size="28" color="white" x="280" y="220" width="720" target="*choice2_cont"]
[glink text="あんまり 食べないかな。自分は" size="28" color="white" x="280" y="320" width="720" target="*choice2_cont"]
[s]

*choice2_cont
[cm]

; キャラ：傘に入れてあげる、一緒に駅まで行こうと誘う

[bg storage="black.jpg" time="500"]
[wait time="200"]

[jump storage="scene/04_bad01.ks"]

[s]
