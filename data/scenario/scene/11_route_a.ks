;=============================================================
; 11_route_a.ks  ⑧A：アジサイの手を引いて駅まで走る〜選択肢⑨A〜改札前まで
; ← 10_bad03.ks（選択肢⑧A）
; → 20_gate_common.ks
;=============================================================

[cm]

; アジサイがひどい目に遭った回数 +1（⑧A：雨の中を走らせた）
[eval exp="f.chara_saved = f.chara_saved + 1"]


; アジサイ: 通常・驚き・むくれ（手を引かれて困惑）
[chara_part name="ajisai_n" eyebrow="normal" eye="odoroki" mouth="mukure"]
;[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="odoroki" mouth="mukure" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
へ？[p]


; アジサイ: 困り・目閉じ・O（汗）
[chara_part name="ajisai_n" eyebrow="komari" eye="toji" mouth="o" effect="ase"]
;[chara_part name="ajisai_n" base="normal" eyebrow="komari" eye="toji" mouth="o" effect="ase" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
マジで言ってる？ [r]
近いったって まだ歩いて5分くらいあるよ？[p]


#&f.p_name
（雨はまだ降り続いている。止みそうにない）[p]

#&f.p_name
（彼女の手を取って 走り出した）[p]


; アジサイ: 通常・驚き・x（引っ張られた！）
[chara_part name="ajisai_n" eyebrow="normal" eye="odoroki" mouth="x"]
;[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="odoroki" mouth="x" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
！[p]


; 立ち絵消去（走り出す）
[chara_hide name="ajisai_n" layer="3" time="200"]

; SE: 走り出す足音
[playse storage="se_hashiru_start.wav"]

; BGM: 雨の音 FI
[fadeinbgm storage="bgm_ame.wav" loop="true" time="1000"]

; 歩き演出開始（走り：通常の2倍速 / 逆スクロール（魚座）も anim_time で共通制御）
[start_walk_bg anim_time="8000"]
[show_letterbox]


; アジサイ: 歩き立ち絵 通常・驚き・通常（走り始め）
[chara_part name="ajisai_w" base="normal" eyebrow="normal" eye="odoroki" mouth="normal" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
[show_ajisai_w]


; アジサイ: 通常・驚き・うろたえ
[chara_part name="ajisai_w" eyebrow="normal" eye="odoroki" mouth="urotae"]
;[chara_part name="ajisai_w" base="normal" eyebrow="normal" eye="odoroki" mouth="urotae" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
わー！ 絶対 間違ってるー！[p]


;tips：（なんでなんでなんで？ バイタリティのかたまりてぃか？ おかげでちょっと冷静になれた）


; アジサイ: 怒り・目閉じ笑み・むくれ（雨に叩かれる）
[chara_part name="ajisai_w" eyebrow="okori" eye="toji_emi" mouth="mukure"]
;[chara_part name="ajisai_w" base="normal" eyebrow="okori" eye="toji_emi" mouth="mukure" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
痛い！ 雨痛い！[p]


;tips：（手 あったか）


#&f.p_name
（大粒の雨に叩かれ続けながら 駅まで走った）[p]


; アジサイ: 通常・ジト目・通常（赤面強）
[chara_part name="ajisai_w" eyebrow="normal" eye="jito" mouth="normal" effect="akagao_strong"]
;[chara_part name="ajisai_w" base="normal" eyebrow="normal" eye="jito" mouth="normal" effect="akagao_strong" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
…………離さないでよ[p]


#&f.p_name
（？）[p]


; アジサイ: 怒り・目閉じ笑み・▽（赤面弱）
[chara_part name="ajisai_w" eyebrow="okori" eye="toji_emi" mouth="v" effect="akagao_weak"]
;[chara_part name="ajisai_w" base="normal" eyebrow="okori" eye="toji_emi" mouth="v" effect="akagao_weak" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
転ぶから！ 離すな て言ってんの！[p]


;tips：（あー こういう人なんだな）


; 立ち絵・走り背景消去（到着）
[chara_hide name="ajisai_w" layer="3" time="200"]
[stop_xanim name="walk_bg_loop"]
[freeimage layer="0" page="fore"]
[hide_letterbox]
[hide_rain]


#&f.p_name
（騒ぎながら 雨に打たれながら 走り続けた）[p]


; BGM: 雨の音 FO
[fadeoutbgm time="1000"]


; 駅前に到着
[bg storage="bg_eki_soto.jpg" time="1000"]
[show_rain]


; BGM: 雨の音 FI（駅前でもまだ降っている）
[fadeinbgm storage="bgm_ame.wav" loop="true" time="1000"]


#&f.p_name
（駅に着いた）[p]

#&f.p_name
（二人してボロボロだ）[p]


; 葉・枝パーツは bad03="&f.if_chara_stucked" で自動適用される
[eval exp="f.if_chara_stucked = 1"]


; ★ 傘パーツ: umbrella="green_broken"（壊れた緑の傘）← 設定済み
; アジサイ: 通常・驚き・むくれ（息を切らしている）
[chara_part name="ajisai_n" umbrella="green_broken" base="normal" eyebrow="normal" eye="odoroki" mouth="mukure" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
[show_ajisai_n]


; アジサイ: 通常・驚き・うろたえ
[chara_part name="ajisai_n" eyebrow="normal" eye="odoroki" mouth="urotae"]
;[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="odoroki" mouth="urotae" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
んへぇ っはあ げえ はあ[p]


#&f.p_name
（息も絶え絶えという感じだ）[p]


; アジサイ: 怒り・通常・x
[chara_part name="ajisai_n" eyebrow="okori" eye="normal" mouth="x"]
;[chara_part name="ajisai_n" base="normal" eyebrow="okori" eye="normal" mouth="x" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
な な な な[p]


#&f.p_name
（な？）[p]


; アジサイ: 困り・通常・O
[chara_part name="ajisai_n" eyebrow="komari" eye="normal" mouth="o"]
;[chara_part name="ajisai_n" base="normal" eyebrow="komari" eye="normal" mouth="o" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
なんで私 先月 始めたダイエットに付き合ってるの？


[wait time="500"]


; ⑨A選択肢◆（影響なし）
[glink text="ダイエット？ もう諦めたよ"   size="28" color="white" x="280" y="220" width="720" target="*choice9a_cont"]
[glink text="先週 ダイエットやめたんだ" size="28" color="white" x="280" y="320" width="720" target="*choice9a_cont"]
[s]


*choice9a_cont
[cm]


; アジサイ: 困り・ジト目・うろたえ
[chara_part name="ajisai_n" eyebrow="komari" eye="jito" mouth="urotae"]
;[chara_part name="ajisai_n" base="normal" eyebrow="komari" eye="jito" mouth="urotae" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
ええ……[p]


; アジサイ: 困り・目閉じ・へ
[chara_part name="ajisai_n" eyebrow="komari" eye="toji" mouth="he"]
;[chara_part name="ajisai_n" base="normal" eyebrow="komari" eye="toji" mouth="he" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
じゃ なんのために走らされたの 私……[p]


#&f.p_name
（ぶつぶつ言いながら 改札まで向かった）[p]


#&f.p_name
（いい汗かいた）[p]


; アジサイ: 怒り・ジト目・むくれ（赤面弱）
[chara_part name="ajisai_n" eyebrow="okori" eye="jito" mouth="mukure" effect="akagao_weak"]
;[chara_part name="ajisai_n" base="normal" eyebrow="okori" eye="jito" mouth="mukure" effect="akagao_weak" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
いくない[p]


;tips：（ばかあほ）


; BGM: 雨の音 FO
[fadeoutbgm time="1000"]

; 立ち絵・雨・背景消去 → 暗転
[chara_hide name="ajisai_n" layer="3" time="200"]
[hide_rain]
[bg storage="black.jpg" time="500"]
[wait time="200"]

[jump storage="scene/20_gate_common.ks"]

[s]
