;=============================================================
; 19_quiz_wrong.ks  星座クイズ不正解
; ← 18_quiz_main.ks（不正解）
; → 24_ed_1.ks
; 引き継ぎ: bg_eki_soto.jpg / ajisai_n表示中 umbrella="red" / BGMなし / 雨なし
;=============================================================

[cm]

; BGM: 雨の音 FI
[fadeinbgm storage="bgm_ame.wav" loop="true" time="1000"]


; ★ 傘パーツ: umbrella="red"（赤い傘 / 18_quiz_main から引き継ぎ）
; アジサイ 初期状態: 通常・目閉じ・へ（クイズ結果を受けて）
[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="toji" mouth="he" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
……………………[p]


; アジサイ: 困り・ジト目・むくれ
[chara_part name="ajisai_n" eyebrow="komari" eye="jito" mouth="mukure"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="komari" eye="jito" mouth="mukure" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
……………………[p]


; アジサイ: 怒り・通常・x
[chara_part name="ajisai_n" eyebrow="okori" eye="normal" mouth="x"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="okori" eye="normal" mouth="x" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
……………………[p]


; アジサイ: 通常・目閉じ笑み・▽
[chara_part name="ajisai_n" eyebrow="normal" eye="toji_emi" mouth="v"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="toji_emi" mouth="v" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
ざんねーん！ はずれ！[p]


; アジサイ: 通常・通常・笑み
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="emi"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="normal" mouth="emi" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
もういっかいやる？[p]


; アジサイ: 怒り・目閉じ笑み・▽
[chara_part name="ajisai_n" eyebrow="okori" eye="toji_emi" mouth="v"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="okori" eye="toji_emi" mouth="v" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
ざんねーん！！ 一日一回です[p]


; アジサイ: 通常・通常・笑み
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="emi"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="normal" mouth="emi" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
明日になったら 回答権が復活するから[p]


; アジサイ: 通常・目閉じ笑み・イー
[chara_part name="ajisai_n" eyebrow="normal" eye="toji_emi" mouth="i"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="toji_emi" mouth="i" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
JSTの20時59分に回復するから [r]
※しません[p]


; アジサイ: 怒り・ジト目・▽
[chara_part name="ajisai_n" eyebrow="okori" eye="jito" mouth="v"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="okori" eye="jito" mouth="v" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
今 時計見たでしょ[p]


; アジサイ: 通常・目閉じ笑み・笑み
[chara_part name="ajisai_n" eyebrow="normal" eye="toji_emi" mouth="emi"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="toji_emi" mouth="emi" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
クスクス[p]


; アジサイ: 通常・通常・笑み
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="emi"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="normal" mouth="emi" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
明日 また遊んでよね[p]


; アジサイ: 通常・目閉じ笑み・イー
[chara_part name="ajisai_n" eyebrow="normal" eye="toji_emi" mouth="i"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="toji_emi" mouth="i" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
今日は帰ろ[p]


; アジサイ: 通常・通常・通常
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="normal"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="normal" mouth="normal" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
……………………[p]


; アジサイ: 怒り・ジト目・イー
[chara_part name="ajisai_n" eyebrow="okori" eye="jito" mouth="i"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="okori" eye="jito" mouth="i" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
ふうん[p]


; アジサイ: 通常・目閉じ笑み・▽
[chara_part name="ajisai_n" eyebrow="normal" eye="toji_emi" mouth="v"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="toji_emi" mouth="v" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
そんな顔もできるんだねぇ[p]


; 立ち絵消去
[chara_hide name="ajisai_n" layer="3" time="200"]


; プレイヤー（内心）
#&f.p_name
（ちょっとくやしい）[p]

#&f.p_name
（にやけ面の彼女と一緒に 改札へ向かった）[p]


; BGM FO・暗転
[fadeoutbgm time="1000"]
[bg storage="black.jpg" time="500"]
[wait time="200"]
[cm]

[jump storage="scene/24_ed_1.ks"]

[s]
