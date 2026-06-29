;=============================================================
; 13_route_b_green.ks  Bルート緑：緑の傘を買った〜改札前まで
; ← 12_route_b.ks（選択肢⑨B：緑の傘）
; → 20_gate_common.ks
; 引き継ぎ: bg_conbini.jpg / キャラなし / 雨なし / BGMなし
;=============================================================

[cm]



; プレイヤー（内心）- コンビニ内
#&f.p_name
（緑の傘を買った）[p]

#&f.p_name
（店員が 壊れた傘を引き取ってくれた）[p]


; SE: 退店（TODO ファイル名未定・仮素材未作成）
;[playse storage="se_conbini_exit.wav"]

; コンビニ背景から黒
[bg storage="black.jpg" time="500"]


; プレイヤー（内心）
#&f.p_name
（帰りの電車は定期だから問題ないけど……）[p]

#&f.p_name
（……………………）[p]

#&f.p_name
（はやく渡してあげよう 彼女が待ってる）[p]


; BGM: 雨の音 FI（コンビニ前へ出る前）
[fadeinbgm storage="bgm_ame.wav" loop="true" time="1000"]


; ★ コンビニ前（軒下・雨なし）: アジサイが屋根下で待機中
; TODO: bg_conbini_mae.jpg 専用素材に差し替え（仮: bg_conbini.jpg のコピー）
[bg storage="bg_conbini_mae.jpg" time="500"]


; ★ 傘パーツ: umbrella="none"（傘渡し前・雨には当たっていない）
; アジサイ 待機状態: 通常・驚き・x（プレイヤーが戻ってきた直後）
; ※緑の傘を受け取るが、ここでは傘はプレイヤーが持ったまま話が進む
[chara_part name="ajisai_n" umbrella="none" base="normal" eyebrow="normal" eye="odoroki" mouth="x" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
[show_ajisai_n]


; アジサイ: 通常・驚き・x（第一反応）
#&f.c_name
………… え？[p]


; ★ 傘渡し（umbrella="none" → "green"）
[chara_part name="ajisai_n" umbrella="green" base="normal" eyebrow="normal" eye="toji_emi" mouth="v" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]

; アジサイ: 通常・目閉じ笑み・▽（傘を受け取った・状況把握して笑う）
#&f.c_name
あはは！[p]


; アジサイ: 困り・目閉じ笑み・イー
[chara_part name="ajisai_n" eyebrow="komari" eye="toji_emi" mouth="i"]
;[chara_part name="ajisai_n" umbrella="green" base="normal" eyebrow="komari" eye="toji_emi" mouth="i" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
なんで 1本しか 買ってこないかな！[p]


; アジサイ: 通常・目閉じ笑み・▽
[chara_part name="ajisai_n" eyebrow="normal" eye="toji_emi" mouth="v"]
;[chara_part name="ajisai_n" umbrella="green" base="normal" eyebrow="normal" eye="toji_emi" mouth="v" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
あはは あはははは！[p]


; アジサイ: 困り・ジト目・イー
[chara_part name="ajisai_n" eyebrow="komari" eye="jito" mouth="i"]
;[chara_part name="ajisai_n" umbrella="green" base="normal" eyebrow="komari" eye="jito" mouth="i" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
おかしいよ おもしろすぎ[p]


; アジサイ: 通常・通常・笑み
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="emi"]
;[chara_part name="ajisai_n" umbrella="green" base="normal" eyebrow="normal" eye="normal" mouth="emi" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
しかも くれるんでしょ？[p]


; アジサイ: 困り・目閉じ笑み・▽
[chara_part name="ajisai_n" eyebrow="komari" eye="toji_emi" mouth="v"]
;[chara_part name="ajisai_n" umbrella="green" base="normal" eyebrow="komari" eye="toji_emi" mouth="v" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
もう ホント 変なの[p]


; アジサイ: 困り・目閉じ・笑み
[chara_part name="ajisai_n" eyebrow="komari" eye="toji" mouth="emi"]
;[chara_part name="ajisai_n" umbrella="green" base="normal" eyebrow="komari" eye="toji" mouth="emi" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
ひぃひぃ…… おなかいたい[p]


; アジサイ: 通常・通常・笑み（赤面弱）
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="emi" effect="akagao_weak"]
;[chara_part name="ajisai_n" umbrella="green" base="normal" eyebrow="normal" eye="normal" mouth="emi" effect="akagao_weak" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
……………………[p]


;tips：（理解が追いつかない。けどもういいか）


; アジサイ: 通常・目閉じ・▽
[chara_part name="ajisai_n" eyebrow="normal" eye="toji" mouth="v" effect="none"]
;[chara_part name="ajisai_n" umbrella="green" base="normal" eyebrow="normal" eye="toji" mouth="v" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
しょうながいから 駅まで入れていってあげちゃう[p]


; アジサイ: 怒り・目閉じ笑み・▽
[chara_part name="ajisai_n" eyebrow="okori" eye="toji_emi" mouth="v"]
;[chara_part name="ajisai_n" umbrella="green" base="normal" eyebrow="okori" eye="toji_emi" mouth="v" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
はー あほくさ[p]


;tips：（なんという独り相撲。そんなこと知るよしも無く 優しいんだ。笑えてくる）


; アジサイ: 通常・通常・笑み
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="emi"]
;[chara_part name="ajisai_n" umbrella="green" base="normal" eyebrow="normal" eye="normal" mouth="emi" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
こっちの話 ね[p]


; アジサイ: 通常・目閉じ笑み・▽
[chara_part name="ajisai_n" eyebrow="normal" eye="toji_emi" mouth="v"]
;[chara_part name="ajisai_n" umbrella="green" base="normal" eyebrow="normal" eye="toji_emi" mouth="v" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
ははは[p]


; アジサイ: 困り・目閉じ・へ（赤面強）
[chara_part name="ajisai_n" eyebrow="komari" eye="toji" mouth="he" effect="akagao_strong"]
;[chara_part name="ajisai_n" umbrella="green" base="normal" eyebrow="komari" eye="toji" mouth="he" effect="akagao_strong" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
いいひとすぎ[p]


; 立ち絵消去
[chara_hide name="ajisai_n" layer="3" time="200"]



; プレイヤー（内心）
#&f.p_name
（笑われながら 駅に向かった）[p]

#&f.p_name
（再び 一つの傘に 入りながら）[p]


; BGM FO・暗転
[fadeoutbgm time="1000"]
[bg storage="black.jpg" time="500"]
[wait time="200"]


; プレイヤー（内心）
#&f.p_name
（雨は降り続いている）[p]

[wait time="300"]
[cm]

[jump storage="scene/20_gate_common.ks"]

[s]
