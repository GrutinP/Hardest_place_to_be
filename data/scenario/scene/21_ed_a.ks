;=============================================================
; 21_ed_a.ks  EDa：ヒロインだけがひどい目に遭い続けたED
; ← 20_gate_common.ks（chara_saved==3）
; 引き継ぎ: ajisai_n表示中 / bg_eki_kaisatsu.jpg / BGMなし
;=============================================================


; アジサイ: 通常・目閉じ笑み・笑み（赤面弱）
[chara_part name="ajisai_n" umbrella="none" eyebrow="normal" eye="toji_emi" mouth="emi" effect="akagao_weak"]
;[chara_part name="ajisai_n" umbrella="none" base="normal" eyebrow="normal" eye="toji_emi" mouth="emi" effect="akagao_weak" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
一緒に帰るの 誘って良かった[p]


; アジサイ: 通常・通常・イー
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="i" effect="none"]
;[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="normal" mouth="i" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
何もしないで起きることが不幸なんだから[p]


; アジサイ: 通常・目閉じ笑み・▽
[chara_part name="ajisai_n" eyebrow="normal" eye="toji_emi" mouth="v"]
;[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="toji_emi" mouth="v" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
今日は 不幸じゃ無かった[p]


; アジサイ: 通常・目閉じ・通常（赤面弱）
[chara_part name="ajisai_n" eyebrow="normal" eye="toji" mouth="normal" effect="akagao_weak"]
;[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="toji" mouth="normal" effect="akagao_weak" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
私にとっては ね[p]


;tips：（あなたがひどい目に遭わなくて良かった）


; アジサイ: 困り・目閉じ・むくれ
[chara_part name="ajisai_n" eyebrow="komari" eye="toji" mouth="mukure" effect="none"]
;[chara_part name="ajisai_n" base="normal" eyebrow="komari" eye="toji" mouth="mukure" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
いや 意味深になっちゃったね[p]


;tips：（あなたが優しい てこと 知ってるから）


; アジサイ: 通常・通常・笑み
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="emi"]
;[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="normal" mouth="emi" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
でも このこと 言うのは変だから[p]


;tips：（守れて良かった）


; アジサイ: 怒り・目閉じ笑み・▽
[chara_part name="ajisai_n" eyebrow="okori" eye="toji_emi" mouth="v"]
;[chara_part name="ajisai_n" base="normal" eyebrow="okori" eye="toji_emi" mouth="v" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
いつか！ いつかその時が来たら 言う[p]


; アジサイ: 困り・通常・x
[chara_part name="ajisai_n" eyebrow="komari" eye="normal" mouth="x"]
;[chara_part name="ajisai_n" base="normal" eyebrow="komari" eye="normal" mouth="x" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
言う……かも？[p]


;tips：（言ったらかっこ悪いかな）


; アジサイ: 通常・通常・笑み
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="emi"]
;[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="normal" mouth="emi" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
だから今日はここまで[p]


; アジサイ: 通常・目閉じ笑み・▽
[chara_part name="ajisai_n" eyebrow="normal" eye="toji_emi" mouth="v"]
;[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="toji_emi" mouth="v" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
そろそろ 行こうか


[wait time="500"]


; ⑩EDa 選択肢（影響なし）
[glink text="それじゃあね"       size="28" color="white" x="280" y="220" width="720" target="*eda_fin"]
[glink text="気をつけて帰ってね" size="28" color="white" x="280" y="320" width="720" target="*eda_fin"]
[s]


*eda_fin
[cm]

; アジサイ: 通常・通常・イー
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="i"]
;[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="normal" mouth="i" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
んじゃ またね[p]


;tips：（ありがとうね）


; BGM FO・画像消去・暗転
[fadeoutbgm time="1000"]
[chara_hide name="ajisai_n" layer="3" time="200"]
[bg storage="black.jpg" time="1000"]
[wait time="500"]
[cm]

・EDa・[l][cm]

;TODO エンディング検討

[jump storage="title.ks"]

[s]
