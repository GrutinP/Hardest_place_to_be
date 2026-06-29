;=============================================================
; 18_quiz_main.ks  星座クイズ：アジサイの星座を当てる
; ← 17_quiz.ks（chara_saved == 0 のとき）
; → 25_true_end.ks（正解） / 19_quiz_wrong.ks（不正解）
; 引き継ぎ: black.jpg / キャラなし / BGMなし
;=============================================================

[cm]

; 駅前背景
[bg storage="bg_eki_soto.jpg" time="300"]

; BGM: 雨の音（小さめ）
[fadeinbgm storage="bgm_ame.wav" loop="true" time="1000"]


; プレイヤー（内心）
#&f.p_name
（駅に着いた）[p]


; ★ 傘パーツ: umbrella="red"（赤い傘）← 設定済み
; アジサイ 表示（umbrella="red" / 通常・目閉じ・通常）
[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="toji" mouth="normal" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
[show_ajisai_n]


; アジサイ: 通常・目閉じ・通常
#&f.c_name
あの さ[p]


; アジサイ: 通常・通常・笑み
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="emi"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="normal" mouth="emi" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
もう一つ 聞きたいことあるんだけど[p]


; プレイヤー（内心）
#&f.p_name
（…………？）[p]


; アジサイ: 通常・目閉じ笑み・イー
[chara_part name="ajisai_n" eyebrow="normal" eye="toji_emi" mouth="i"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="toji_emi" mouth="i" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
私の星座 当ててみて[p]


; プレイヤー（内心）
#&f.p_name
（…………え？）[p]


; BGM FO（クイズUI前）
[fadeoutbgm time="1000"]
[wait time="300"]

#&f.c_name
私の星座 当ててみて

;[layopt layer="message0" visible="false"]

; 12星座の選択肢（番号で管理）
[glink text="おひつじ座" size="24" color="white" x="80"  y="100" width="230" target="*q_01"]
[glink text="おうし座"   size="24" color="white" x="330" y="100" width="230" target="*q_02"]
[glink text="ふたご座"   size="24" color="white" x="580" y="100" width="230" target="*q_03"]
[glink text="かに座"     size="24" color="white" x="830" y="100" width="230" target="*q_04"]
[glink text="しし座"     size="24" color="white" x="80"  y="200" width="230" target="*q_05"]
[glink text="おとめ座"   size="24" color="white" x="330" y="200" width="230" target="*q_06"]
[glink text="てんびん座" size="24" color="white" x="580" y="200" width="230" target="*q_07"]
[glink text="さそり座"   size="24" color="white" x="830" y="200" width="230" target="*q_08"]
[glink text="いて座"     size="24" color="white" x="80"  y="300" width="230" target="*q_09"]
[glink text="やぎ座"     size="24" color="white" x="330" y="300" width="230" target="*q_10"]
[glink text="みずがめ座" size="24" color="white" x="580" y="300" width="230" target="*q_11"]
[glink text="うお座"     size="24" color="white" x="830" y="300" width="230" target="*q_12"]
[s]

; 選択した星座番号を tf.quiz_answer にセット → 正誤判定へ
*q_01
[eval exp="tf.quiz_answer=1"]
[jump target="*quiz_check"]
*q_02
[eval exp="tf.quiz_answer=2"]
[jump target="*quiz_check"]
*q_03
[eval exp="tf.quiz_answer=3"]
[jump target="*quiz_check"]
*q_04
[eval exp="tf.quiz_answer=4"]
[jump target="*quiz_check"]
*q_05
[eval exp="tf.quiz_answer=5"]
[jump target="*quiz_check"]
*q_06
[eval exp="tf.quiz_answer=6"]
[jump target="*quiz_check"]
*q_07
[eval exp="tf.quiz_answer=7"]
[jump target="*quiz_check"]
*q_08
[eval exp="tf.quiz_answer=8"]
[jump target="*quiz_check"]
*q_09
[eval exp="tf.quiz_answer=9"]
[jump target="*quiz_check"]
*q_10
[eval exp="tf.quiz_answer=10"]
[jump target="*quiz_check"]
*q_11
[eval exp="tf.quiz_answer=11"]
[jump target="*quiz_check"]
*q_12
[eval exp="tf.quiz_answer=12"]
[jump target="*quiz_check"]

*quiz_check
[layopt layer="message0" visible="true"]
[cm]

; 正誤判定：tf.quiz_answer（番号）== f.c_sign（番号）なら真ED
; f.c_sign = 12（魚座）、プレイヤーが魚座の場合は 6（乙女座）
[jump storage="scene/25_true_end.ks" cond="tf.quiz_answer==f.c_sign"]
[jump storage="scene/19_quiz_wrong.ks"]

[s]
