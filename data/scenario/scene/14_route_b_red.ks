;=============================================================
; 14_route_b_red.ks  Bルート赤：赤い傘を買った〜選択肢⑩
; ← 12_route_b.ks（選択肢⑨B：赤い傘）
; → 15_route_b_red_yes.ks（はい） / 16_route_b_red_no.ks（いいえ）
; 引き継ぎ: bg_conbini.jpg / キャラなし / 雨なし / BGMなし
;=============================================================

[cm]



; プレイヤー（内心）- コンビニ内
#&f.p_name
（赤の傘を買った）[p]

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
[chara_part name="ajisai_n" umbrella="none" base="normal" eyebrow="normal" eye="odoroki" mouth="x" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
[show_ajisai_n]


; アジサイ: 通常・驚き・x
#&f.c_name
！！！！！！[p]


; プレイヤー（内心）
#&f.p_name
（赤い傘を渡した）[p]


; ★ 傘渡し後: umbrella="red"（赤い傘）
[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="odoroki" mouth="o" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]

; アジサイ: 通常・驚き・O
#&f.c_name
……………………[p]


; アジサイ: 通常・目閉じ・むくれ
[chara_part name="ajisai_n" eyebrow="normal" eye="toji" mouth="mukure"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="toji" mouth="mukure" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
………… あ[p]


; アジサイ: 通常・驚き・うろたえ
[chara_part name="ajisai_n" eyebrow="normal" eye="odoroki" mouth="urotae"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="odoroki" mouth="urotae" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
………… え[p]


;tips：くぁｗせｄｒｆｔｇｙふじこｌ、ｐ；＠


; プレイヤー（内心）
#&f.p_name
（……………………）[p]


; アジサイ: 困り・目閉じ・通常
[chara_part name="ajisai_n" eyebrow="komari" eye="toji" mouth="normal"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="komari" eye="toji" mouth="normal" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
知………… てた… の……？


; BGM FO（選択肢直前）
[fadeoutbgm time="1000"]
[wait time="300"]


; ⑩◆B-b 選択肢（はい → ネタばらし / いいえ → あたふた）
[glink text="はい" size="32" color="white" x="340" y="220" width="600" storage="scene/15_route_b_red_yes.ks"]
[glink text="いいえ" size="32" color="white" x="340" y="340" width="600" storage="scene/16_route_b_red_no.ks"]
[s]
