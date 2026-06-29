;=============================================================
; 23_ed_c.ks  EDc：プレイヤーだけがひどい目に遭い続けたED
; ← 20_gate_common.ks（chara_saved==0）
; 引き継ぎ: ajisai_n表示中 / bg_eki_kaisatsu.jpg / BGMなし
;=============================================================


; アジサイ: 困り・目閉じ・へ
[chara_part name="ajisai_n" umbrella="none" eyebrow="komari" eye="toji" mouth="he" effect="none"]
;[chara_part name="ajisai_n" umbrella="none" base="normal" eyebrow="komari" eye="toji" mouth="he" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
何のことかわからないと思うけど[p]


; アジサイ: 通常・ジト目・笑み（赤面弱）
[chara_part name="ajisai_n" eyebrow="normal" eye="jito" mouth="emi" effect="akagao_weak"]
;[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="jito" mouth="emi" effect="akagao_weak" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
ンフフ いいよわかんなくて[p]


; アジサイ: 通常・目閉じ笑み・▽（赤面弱）
[chara_part name="ajisai_n" eyebrow="normal" eye="toji_emi" mouth="v" effect="akagao_weak"]
;[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="toji_emi" mouth="v" effect="akagao_weak" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
そのままでいればいいよ[p]


; アジサイ: 通常・ジト目・イー（赤面強）
[chara_part name="ajisai_n" eyebrow="normal" eye="jito" mouth="i" effect="akagao_strong"]
;[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="jito" mouth="i" effect="akagao_strong" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
そのままでいてよね[p]


; アジサイ: 通常・目閉じ・笑み
[chara_part name="ajisai_n" eyebrow="normal" eye="toji" mouth="emi" effect="none"]
;[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="toji" mouth="emi" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
…………[p]

;tips：（お礼言いたい。でも言えない）


; アジサイ: 通常・通常・笑み
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="emi"]
;[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="normal" mouth="emi" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
そろそろ 行こうか


[wait time="500"]


; ⑩EDc 選択肢（影響なし）
[glink text="それじゃあ また明日" size="28" color="white" x="280" y="220" width="720" target="*edc_fin"]
[glink text="またね"               size="28" color="white" x="280" y="320" width="720" target="*edc_fin"]
[s]


*edc_fin
[cm]

; アジサイ: 通常・驚き・へ（赤面強）
[chara_part name="ajisai_n" eyebrow="normal" eye="odoroki" mouth="he" effect="akagao_strong"]
;[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="odoroki" mouth="he" effect="akagao_strong" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
！[p]


; アジサイ: 怒り・ジト目・むくれ（赤面強）
[chara_part name="ajisai_n" eyebrow="okori" eye="jito" mouth="mukure" effect="akagao_strong"]
;[chara_part name="ajisai_n" base="normal" eyebrow="okori" eye="jito" mouth="mukure" effect="akagao_strong" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
…………[p]

;tips：（お礼言うのじゃなく ちゃんと返そう。またチャンスがありそうだから）


; アジサイ: 通常・目閉じ笑み・▽（赤面弱）
[chara_part name="ajisai_n" eyebrow="normal" eye="toji_emi" mouth="v" effect="akagao_weak"]
;[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="toji_emi" mouth="v" effect="akagao_weak" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
んじゃ またね[p]


; BGM FO・画像消去・暗転
[fadeoutbgm time="1000"]
[chara_hide name="ajisai_n" layer="3" time="200"]
[bg storage="black.jpg" time="1000"]
[wait time="500"]
[cm]

・EDc・[l][cm]

;TODO エンディング検討

[jump storage="title.ks"]

[s]
