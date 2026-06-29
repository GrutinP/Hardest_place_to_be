;=============================================================
; 08_bad02_a.ks  ⑥A：右に交わす → アジサイが犬に飛びかかられる
; ← 07_bad02.ks（選択肢⑥A）
;=============================================================

[cm]

; アジサイがひどい目に遭った回数 +1
[eval exp="f.chara_saved = f.chara_saved + 1"]

; TODO 犬アイコン消去（07で表示中のもの）

; 歩き立ち絵を非表示にして通常立ち絵に差し替え
[chara_hide name="ajisai_w" layer="3" time="200"]
[chara_part name="ajisai_n" umbrella="none" base="normal" eyebrow="okori" eye="odoroki" mouth="x" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
[show_ajisai_n]

; TODO 犬アイコン　右からいれて中央あたりで斜め左下へ
; TODO SE 転んだときの音


; TODO 立ち絵ごと転ばせる（chara_move 等）
; TODO 犬アイコン消去

; 立ち絵を一旦消す（転んでいる間）
[chara_hide name="ajisai_n" layer="3" time="200"]

; 犬足跡の汚れフラグを立てる
[eval exp="f.if_chara_stomped = 1"]


; プレイヤー（内心）
#&f.p_name
（犬に飛びかかられて 顔を舐め回されている）[p]

#&f.p_name
（目も当てられない…………）[p]


; アジサイ（オフスクリーン）
#&f.c_name
ハナレロ！ このワンキチ！！[p]


; プレイヤー（内心）
#&f.p_name
（ワンキチ？）[p]


; TODO SE 立ち上がる音

; 立ち絵を戻す（立ち上がった状態 / bad02=1 で足跡汚れ表示）
[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="odoroki" mouth="urotae" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
[show_ajisai_n]


; アジサイ: 怒り・驚き・うろたえ（赤面弱）
[chara_part name="ajisai_n" eyebrow="okori" eye="odoroki" mouth="urotae" effect="akagao_weak"]
;[chara_part name="ajisai_n" base="normal" eyebrow="okori" eye="odoroki" mouth="urotae" effect="akagao_weak" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
はぁ はぁ …………[p]


; アジサイ: 通常・目閉じ・むくれ（汗）
[chara_part name="ajisai_n" eyebrow="normal" eye="toji" mouth="mukure" effect="ase"]
;[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="toji_emi" mouth="mukure" effect="ase" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
今日のところは これくらいで勘弁してやる


; ⑦A選択肢（影響なし）
[glink text="勝ったの？" size="28" color="white" x="280" y="220" width="720" target="*choice7a_cont"]
[glink text="負けたの？" size="28" color="white" x="280" y="320" width="720" target="*choice7a_cont"]
[s]


*choice7a_cont
[cm]


; アジサイ: 怒り・ジト目・むくれ
[chara_part name="ajisai_n" eyebrow="okori" eye="jito" mouth="mukure" effect="none"]
;[chara_part name="ajisai_n" base="normal" eyebrow="okori" eye="jito" mouth="mukure" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
あのね 勝ち負けじゃないの[p]


; アジサイ: 通常・目閉じ・O
[chara_part name="ajisai_n" eyebrow="normal" eye="toji" mouth="o"]
;[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="toji_emi" mouth="o" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
立ち向かったことを 評価して欲しいの[p]


; アジサイ: 怒り・ジト目・へ
[chara_part name="ajisai_n" eyebrow="okori" eye="jito" mouth="he"]
;[chara_part name="ajisai_n" base="normal" eyebrow="okori" eye="jito" mouth="he" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
たとえ試合に勝って [r]
勝負に負けたとしても だよ[p]


; プレイヤー（内心）
#&f.p_name
（負けたようだ……）[p]


; アジサイ: 怒り・驚き・O
[chara_part name="ajisai_n" eyebrow="okori" eye="odoroki" mouth="o"]
;[chara_part name="ajisai_n" base="normal" eyebrow="okori" eye="odoroki" mouth="o" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
そんな目で見ないで！[p]


; アジサイ: 困り・目閉じ・へ（赤面強）
[chara_part name="ajisai_n" eyebrow="komari" eye="toji" mouth="he" effect="akagao_strong"]
;[chara_part name="ajisai_n" base="normal" eyebrow="komari" eye="toji_emi" mouth="he" effect="akagao_strong" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
見るなら もっと違う目で見てほし…………[r]
…………いやなんでもない[p]


;tips：（楽しんでないか？ まあ本望だけど）


[chara_hide name="ajisai_n" layer="3" time="200"]


; プレイヤー（内心）
#&f.p_name
（犬に顔を踏まれた（彼女が））[p]


; 暗転・消去・遷移
[freeimage layer="0" page="fore"]
[bg storage="black.jpg" time="500"]
[wait time="200"]

[jump storage="scene/10_bad03.ks"]

[s]
