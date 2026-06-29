;=============================================================
; 22_ed_b.ks  EDb：お互いにひどい目に遭ったED
; ← 20_gate_common.ks（chara_saved==1 or 2）
; 引き継ぎ: ajisai_n表示中 / bg_eki_kaisatsu.jpg / BGMなし
;=============================================================


; アジサイ: 困り・目閉じ・へ
[chara_part name="ajisai_n" umbrella="none" eyebrow="komari" eye="toji" mouth="he" effect="none"]
;[chara_part name="ajisai_n" umbrella="none" base="normal" eyebrow="komari" eye="toji" mouth="he" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
短い通学路だけど 大冒険だったね[p]


; アジサイ: 通常・通常・笑み
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="emi"]
;[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="normal" mouth="emi" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
占いは占い[p]


; アジサイ: 通常・目閉じ・▽
[chara_part name="ajisai_n" eyebrow="normal" eye="toji" mouth="v"]
;[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="toji" mouth="v" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
今日起きたこととは 関係が無い[p]


; アジサイ: 通常・目閉じ笑み・イー
[chara_part name="ajisai_n" eyebrow="normal" eye="toji_emi" mouth="i"]
;[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="toji_emi" mouth="i" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
その結果私たちがどうするか てことが大事なの[p]


; アジサイ: 怒り・驚き・▽（赤面強）
[chara_part name="ajisai_n" eyebrow="okori" eye="odoroki" mouth="v" effect="akagao_strong"]
;[chara_part name="ajisai_n" base="normal" eyebrow="okori" eye="odoroki" mouth="v" effect="akagao_strong" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
うわ いいこと言ったわー[p]


;tips：（何口走ってんだこの思春期小娘きえたいきえたいきえたいきえたいきえたい）


; アジサイ: 通常・通常・笑み
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="emi" effect="none"]
;[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="normal" mouth="emi" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
覚えといて[p]


; アジサイ: 怒り・ジト目・むくれ
[chara_part name="ajisai_n" eyebrow="okori" eye="jito" mouth="mukure"]
;[chara_part name="ajisai_n" base="normal" eyebrow="okori" eye="jito" mouth="mukure" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
マジで[p]


;tips：（今度 聞くからね？ ガチで 一字一句 徹頭徹尾 天網恢々（誤用））


; アジサイ: 怒り・目閉じ笑み・▽（赤面弱）
[chara_part name="ajisai_n" eyebrow="okori" eye="toji_emi" mouth="v" effect="akagao_weak"]
;[chara_part name="ajisai_n" base="normal" eyebrow="okori" eye="toji_emi" mouth="v" effect="akagao_weak" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
今日の授業は ここまで[p]


; アジサイ: 通常・通常・笑み
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="emi" effect="none"]
;[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="normal" mouth="emi" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
そろそろ 行こうか


;tips：（思ったより落ち込まなかった。冗談言えて安心したのかも）


[wait time="500"]


; ⑩EDb 選択肢（影響なし）
[glink text="それじゃあね"       size="28" color="white" x="280" y="220" width="720" target="*edb_fin"]
[glink text="気をつけて帰ってね" size="28" color="white" x="280" y="320" width="720" target="*edb_fin"]
[s]


*edb_fin
[cm]

; アジサイ: 通常・目閉じ笑み・イー
[chara_part name="ajisai_n" eyebrow="normal" eye="toji_emi" mouth="i"]
;[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="toji_emi" mouth="i" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
……フフ[p]


; アジサイ: 通常・通常・笑み
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="emi"]
;[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="normal" mouth="emi" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
んじゃ またね[p]

;tips：（今度はもっと話したい）


; BGM FO・画像消去・暗転
[fadeoutbgm time="1000"]
[chara_hide name="ajisai_n" layer="3" time="200"]
[bg storage="black.jpg" time="1000"]
[wait time="500"]
[cm]

・EDb・[l][cm]

;TODO エンディング検討

[jump storage="title.ks"]

[s]
