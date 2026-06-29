;=============================================================
; 25_true_end.ks  真エンド：星座当て正解
; ← 18_quiz_main.ks（tf.quiz_answer == f.c_sign）
; → title.ks
; 引き継ぎ: bg_eki_soto.jpg / ajisai_n表示中 umbrella="red" / BGMなし / 雨なし
; ★ 無言・セリフなし。立ち絵表情変化のみで進行
;=============================================================

[cm]


; アジサイ: 通常・通常・通常（正解した直後、無言で受け止める）
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="normal"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="normal" mouth="normal" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
……………………[p]


;tips：（普通 自分以外の星座占いなんか 覚えてないよ）


; アジサイ: 通常・目閉じ・へ（赤面弱）
[chara_part name="ajisai_n" eye="toji" mouth="he" effect="akagao_weak"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="toji" mouth="he" effect="akagao_weak" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
……………………[p]


;tips：（わざわざ頑張って思い出してくれたのかな？）


; アジサイ: 通常・目閉じ笑み・笑み（赤面強）
[chara_part name="ajisai_n" eye="toji_emi" mouth="emi" effect="akagao_strong"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="toji_emi" mouth="emi" effect="akagao_strong" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
……………………[p]


;tips：（ホント そういうとこだよ）


; 立ち絵消去
[chara_hide name="ajisai_n" layer="3" time="400"]


; 背景消去（暗転）
[bg storage="black.jpg" time="2000"]
[wait time="500"]


; スチルCG表示（TODO 本素材に差し替え）
;[image layer="0" storage="TODO_cg_true_end.png" page="fore" visible="true"]


; BGM FI: 真エンド楽曲
[fadeinbgm storage="bgm_true_end.wav" loop="true" time="1000"]


; SE: 雨音ループ（TODO 本素材に差し替え）
;[playse storage="se_ame_loop.wav" loop="true"]


; TODO: スタッフロール実装


[wait time="300"]
[cm]

・True END・[l][cm]

[jump storage="title.ks"]

[s]
