;=============================================================
; 16_route_b_red_no.ks  ⑩「いいえ」：あたふた → 17_quiz
; ← 14_route_b_red.ks（選択肢⑩：いいえ）
; → 17_quiz.ks
; 引き継ぎ: bg_ame_michi.jpg / ajisai_n表示中 umbrella="red" / 雨あり / BGMなし
;=============================================================

[cm]


; ★ 傘パーツ: umbrella="red"（赤い傘 / 14_route_b_red から引き継ぎ）
; アジサイ 初期状態: 通常・驚き・通常（「いいえ」直後）
[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="odoroki" mouth="normal" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
……………………[p]


; BGM: 雨の音 FI
[fadeinbgm storage="bgm_ame.wav" loop="true" time="1000"]


; プレイヤー（内心）
#&f.p_name
（何か してしまったようだ）[p]


; アジサイ: 通常・驚き・O
[chara_part name="ajisai_n" eyebrow="normal" eye="odoroki" mouth="o"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="odoroki" mouth="o" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
え だって なんで[p]


; プレイヤー（内心）
#&f.p_name
（あたふたしている）[r]
（これがあたふた）[p]

#&f.p_name
（初めて見た）[r]
（よく見ておこう）[p]


; アジサイ: 通常・目閉じ・通常（汗）
[chara_part name="ajisai_n" eyebrow="normal" eye="toji" mouth="normal" effect="ase"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="toji" mouth="normal" effect="ase" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
やめなさい[p]


; SE: シャッター音（TODO ファイル名未定・仮素材未作成）
;[playse storage="se_shutter.wav"]
[wait time="500"]


; アジサイ: 怒り・驚き・O
[chara_part name="ajisai_n" eyebrow="okori" eye="odoroki" mouth="o" effect="none"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="okori" eye="odoroki" mouth="o" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
やめろ！[p]


; アジサイ: 怒り・ジト目・むくれ
[chara_part name="ajisai_n" eyebrow="okori" eye="jito" mouth="mukure"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="okori" eye="jito" mouth="mukure" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
……………………[p]


;tips：（マジでただの偶然 てこと？ んなことある？）


; アジサイ: 通常・目閉じ笑み・笑み
[chara_part name="ajisai_n" eyebrow="normal" eye="toji_emi" mouth="emi"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="toji_emi" mouth="emi" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
あはは あほらし[p]


; アジサイ: 通常・通常・イー
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="i"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="normal" mouth="i" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
ホント そういうとこだからね[p]


; プレイヤー（内心）
#&f.p_name
（じろじろ見てはいけなかったようだ）[p]


; アジサイ: 怒り・ジト目・x
[chara_part name="ajisai_n" eyebrow="okori" eye="jito" mouth="x"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="okori" eye="jito" mouth="x" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
違うわ[p]


; アジサイ: 困り・目閉じ・むくれ
[chara_part name="ajisai_n" eyebrow="komari" eye="toji" mouth="mukure"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="komari" eye="toji" mouth="mukure" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
もういいよ[p]


; アジサイ: 困り・ジト目・通常
[chara_part name="ajisai_n" eyebrow="komari" eye="jito" mouth="normal"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="komari" eye="jito" mouth="normal" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
はぁ[p]


; アジサイ: 困り・目閉じ・通常（赤面弱）
[chara_part name="ajisai_n" eyebrow="komari" eye="toji" mouth="normal" effect="akagao_weak"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="komari" eye="toji" mouth="normal" effect="akagao_weak" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
[ruby text="けい"]傾[ruby text="ぼ"]慕 ねぇ…………[p]


; アジサイ: 困り・ジト目・通常
[chara_part name="ajisai_n" eyebrow="komari" eye="jito" mouth="normal" effect="none"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="komari" eye="jito" mouth="normal" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
……………………[p]


; アジサイ: 通常・通常・笑み
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="emi"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="normal" mouth="emi" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
行こ[p]


; アジサイ: 通常・目閉じ笑み・▽
[chara_part name="ajisai_n" eyebrow="normal" eye="toji_emi" mouth="v"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="toji_emi" mouth="v" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
なーんで 1本しか買ってこなかったのか わかんないけど[p]


; アジサイ: 通常・通常・イー
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="i"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="normal" mouth="i" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
あなたが買ってきてくれた この赤い傘で[p]


; 立ち絵消去・雨消去
[chara_hide name="ajisai_n" layer="3" time="200"]


; プレイヤー（内心）
#&f.p_name
（再び 一つの傘で 駅に向かって歩き始めた）[p]


; BGM FO・暗転
[fadeoutbgm time="1000"]
[bg storage="black.jpg" time="500"]
[hide_rain]
[wait time="200"]


; プレイヤー（内心）
#&f.p_name
（雨は降り続いている）[p]

[wait time="300"]
[cm]

[jump storage="scene/17_quiz.ks"]

[s]
