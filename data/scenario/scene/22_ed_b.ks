;=============================================================
; 22_ed_b.ks  EDb：お互いにひどい目に遭ったけど楽しかった
; ← 20_gate_common.ks（chara_saved==2、またはBルート緑でchara_saved==2）
;=============================================================

[cm]
【22_ed_b: EDb — お互いにひどい目に遭ったED (chara_saved==1 or 2)】[p]
; キャラ：「短い通学路だけど大冒険だったね」
;         「占いは占い。結果どうするかが大事」
;         「天網恢々（誤用）」

[chara_hide name="ajisai" time="500"]

; ⑩EDb影響なし
【22_ed_b: 選択肢⑩EDb — 別れの言葉（影響なし）】[p]
[glink text="ありがとうね"       size="28" color="white" x="280" y="220" width="720" target="*edb_fin"]
[glink text="気をつけて帰ってね" size="28" color="white" x="280" y="320" width="720" target="*edb_fin"]
[s]

*edb_fin
[cm]

; キャラ：「んじゃ またね」

[bg storage="black.jpg" time="1000"]
[wait time="500"]
[cm]

;[bgm storage="" time="500"]

・EDb・[l][cm]

[jump storage="title.ks"]

[s]
