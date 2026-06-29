;=============================================================
; 09_bad02_b.ks  ⑥B：ぽち！ → プレイヤーが犬に踏まれる（アジサイは無事）
; ← 07_bad02.ks（選択肢⑥B）
;=============================================================

[cm]

; ※ f.chara_saved は加算しない（アジサイは被害を受けていない）

; TODO 犬アイコン拡大
; 歩き立ち絵消去
[chara_hide name="ajisai_w" layer="3" time="200"]
; TODO 犬アイコン消去（フェードアウト）
; TODO SE 転ぶ音

; 通常立ち絵に切り替え
[chara_part name="ajisai_n" umbrella="none" base="normal" eyebrow="normal" eye="odoroki" mouth="he" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
[show_ajisai_n]


; アジサイ: 怒り・ジト目・ｘ
[chara_part name="ajisai_n" eyebrow="okori" eye="jito" mouth="x"]
;[chara_part name="ajisai_n" base="normal" eyebrow="okori" eye="jito" mouth="x" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
…………[p]


; アジサイ: 困り・目閉じ・O
[chara_part name="ajisai_n" eyebrow="komari" eye="toji" mouth="o"]
;[chara_part name="ajisai_n" base="normal" eyebrow="komari" eye="toji_emi" mouth="o" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
え？ 知り合いなの？ あの犬


[wait time="500"]


; ⑦B選択肢（影響なし）
[glink text="いや、知らない"             size="28" color="white" x="280" y="220" width="720" target="*choice7b_cont"]
[glink text="犬に知り合いなんていないし" size="28" color="white" x="280" y="320" width="720" target="*choice7b_cont"]
[s]


*choice7b_cont
[cm]


; アジサイ: 通常・ジト目・へ（汗）
[chara_part name="ajisai_n" eyebrow="normal" eye="jito" mouth="he" effect="ase"]
;[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="jito" mouth="he" effect="ase" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
…………そういう 体を張ったボケは 控えた方がいいと思う[p]


; アジサイ: 困り・目閉じ・むくれ
[chara_part name="ajisai_n" eyebrow="komari" eye="toji" mouth="mukure" effect="none"]
;[chara_part name="ajisai_n" base="normal" eyebrow="komari" eye="toji_emi" mouth="mukure" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
いや 人のこと言えないけど。[r]
私はボケで怪我したくない方だから[p]


; プレイヤー（内心）
#&f.p_name
（犬と戯れた）[p]

#&f.p_name
（元気が2上がった 体力が3下がった）[p]

#&f.p_name
（雨の日の犬の匂いを覚えた）[p]


; アジサイ: 怒り・ジト目・へ（赤面弱）
[chara_part name="ajisai_n" eyebrow="okori" eye="jito" mouth="he" effect="akagao_weak"]
;[chara_part name="ajisai_n" base="normal" eyebrow="okori" eye="jito" mouth="he" effect="akagao_weak" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
どういう感情なの？ ソレ[p]


;tips：ずるいよ


; 暗転・消去・遷移
[chara_hide name="ajisai_n" layer="3" time="200"]
[freeimage layer="0" page="fore"]
[bg storage="black.jpg" time="500"]
[wait time="200"]

[jump storage="scene/10_bad03.ks"]

[s]
