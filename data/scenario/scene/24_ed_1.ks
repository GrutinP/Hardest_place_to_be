;=============================================================
; 24_ed_1.ks  ED①：赤い傘ルート（クイズ未到達 or 不正解）
; ← 17_quiz.ks（chara_saved>0）/ 19_quiz_wrong.ks
; → title.ks
; 引き継ぎ: bg=black.jpg / キャラなし / BGMなし
;=============================================================

[cm]


; 明転: 改札内
[bg storage="bg_eki_kaisatsu.jpg" time="300"]


; SE: 改札通過音（TODO 仮素材未作成）
;[playse storage="se_kaisatsu.wav"]


; BGM FI: 雨の音（TODO 駅専用BGMに差し替え）
[fadeinbgm storage="bgm_ame.wav" loop="true" time="1000"]


; プレイヤー（内心）
#&f.p_name
（改札をくぐった）[p]

#&f.p_name
（彼女とはホームが別々だから ここでお別れだ）[p]


; ★ 傘パーツ: umbrella="red"（贈った赤い傘を持っている）
; アジサイ 初期状態: 通常・通常・通常
[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="normal" mouth="normal" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
[show_ajisai_n]
#&f.c_name
なんか[p]


; アジサイ: 通常・目閉じ・むくれ
[chara_part name="ajisai_n" eyebrow="normal" eye="toji" mouth="mukure"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="toji" mouth="mukure" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
なんか 長い一日 というか[p]


; アジサイ: 通常・通常・笑み
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="emi"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="normal" mouth="emi" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
長い道のりだったね[p]


; アジサイ: 通常・目閉じ笑み・▽
[chara_part name="ajisai_n" eyebrow="normal" eye="toji_emi" mouth="v"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="toji_emi" mouth="v" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
えらい目にあったけど 私は楽しかったよ[p]


; アジサイ: 通常・通常・イー
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="i"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="normal" mouth="i" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
何もしないでぼんやり生きてるより [r]
目一杯はしゃいでさ[p]


; アジサイ: 怒り・目閉じ笑み・笑み
[chara_part name="ajisai_n" eyebrow="okori" eye="toji_emi" mouth="emi"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="okori" eye="toji_emi" mouth="emi" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
良かれ悪しかれ 起こしていくべきだと思う[p]


; アジサイ: 通常・通常・イー
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="i"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="normal" mouth="i" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
今日みたいにね[p]


; アジサイ: 通常・目閉じ笑み・笑み
[chara_part name="ajisai_n" eyebrow="normal" eye="toji_emi" mouth="emi"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="toji_emi" mouth="emi" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
だから 占いは好き[p]


; アジサイ: 通常・目閉じ・通常
[chara_part name="ajisai_n" eyebrow="normal" eye="toji" mouth="normal"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="toji" mouth="normal" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
……………………[p]


; アジサイ: 通常・通常・笑み
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="emi"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="normal" mouth="emi" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
赤い傘 ありがとうね[p]


; アジサイ: 困り・目閉じ・へ
[chara_part name="ajisai_n" eyebrow="komari" eye="toji" mouth="he"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="komari" eye="toji" mouth="he" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
あの緑の傘にも [r]
別に思い入れは無かったんだよ[p]


; アジサイ: 通常・通常・通常
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="normal"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="normal" mouth="normal" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
でも この赤い傘は すごく大事な傘になった[p]


; アジサイ: 通常・通常・x
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="x"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="normal" mouth="x" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
なんでだろうね？[p]


; アジサイ: 怒り・ジト目・むくれ（赤面強）
[chara_part name="ajisai_n" eyebrow="okori" eye="jito" mouth="mukure" effect="akagao_strong"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="okori" eye="jito" mouth="mukure" effect="akagao_strong" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
……………………[p]


;tips：（キョトンとすんな わかれ あほタレ）


; アジサイ: 怒り・目閉じ笑み・▽（赤面強）
[chara_part name="ajisai_n" eyebrow="okori" eye="toji_emi" mouth="v"]
;[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="okori" eye="toji_emi" mouth="v" effect="akagao_strong" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
教えない[p]


; 立ち絵消去
[chara_hide name="ajisai_n" layer="3" time="200"]


; SE: かけていく音（TODO 仮素材未作成）
;[playse storage="se_run.wav"]


; プレイヤー（内心）
#&f.p_name
（行ってしまった）[p]

#&f.p_name
（占いの通り ひどい目に遭った）[p]

#&f.p_name
（端から見れば そう思うだろう）[p]


; BGM FO・暗転
[fadeoutbgm time="1000"]
[bg storage="black.jpg" time="1000"]
[wait time="500"]
[cm]


; プレイヤー（内心・暗転後ナレーション）
#&f.p_name
（でも彼女を見ていると あながちそうとも言い切れない）[p]

[wait time="300"]
[cm]

・ED①・[l][cm]


;スタッフクレジット


[jump storage="title.ks"]

[s]
