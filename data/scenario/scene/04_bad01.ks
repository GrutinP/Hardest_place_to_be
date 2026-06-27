;=============================================================
; 04_bad01.ks  1つめの不幸：トラックの水しぶき〜選択肢③
; ← 03_prologue.ks
;=============================================================

[cm]


; BGM: 雨の音 FI（TODO）
;[playbgm storage="TODO_bgm_ame.ogg" loop="true" time="1000"]

; 背景: 街背景、歩き（雨も降ってる）
[start_walk_bg]
[show_letterbox]
[show_rain]
[wait time="300"]


; 立ち絵: 歩きモードで表示（通常・通常・通常）
[chara_part name="ajisai_w" base="normal" eyebrow="normal" eye="normal" mouth="normal" effect="none" bad01="0" bad02="0" bad03="0"]
[show_ajisai_n time="500"]


; プレイヤー（内心）
#&f.p_name
（一つの傘に 2人で入っている）[p]
（…………小さい傘だから狭い）[p]


; アジサイ: 通常・驚き・▽
[chara_part name="ajisai_w" eyebrow="normal" eye="odoroki" mouth="v" effect="none"]
#&f.c_name
;[playse storage="TODO_voice_ajisai_bad01_01.ogg"]
あのさ！ 占いのコーナー よく見るの？[p]


; アジサイ: 通常・通常・笑み
[chara_part name="ajisai_w" eyebrow="normal" eye="normal" mouth="emi" effect="none"]
#&f.c_name
;[playse storage="TODO_voice_ajisai_bad01_02.ogg"]
朝早くの番組なのに[p]


; アジサイ: 困り・目閉じ・へ
[chara_part name="ajisai_w" eyebrow="komari" eye="toji" mouth="he" effect="none"]
#&f.c_name
;[playse storage="TODO_voice_ajisai_bad01_03.ogg"]
私は家が遠いから [r]
あの占いが終わったら家を出るって決めててさ[p]


; アジサイ: 通常・通常・笑み
[chara_part name="ajisai_w" eyebrow="normal" eye="normal" mouth="emi" effect="none"]
#&f.c_name
;[playse storage="TODO_voice_ajisai_bad01_04.ogg"]
だから毎日見るんだよね[p]


;★（だって それを見て あなたのこと知るきっかけになったんだもの）


; アジサイ: 困り・通常・イー
[chara_part name="ajisai_w" eyebrow="komari" eye="normal" mouth="i" effect="none"]
#&f.c_name
;[playse storage="TODO_voice_ajisai_bad01_05.ogg"]
まあ 別に占いを信じてるわけじゃないけど 私 そういうの検証するのが好きで[p]


; アジサイ: 通常・目閉じ笑み・▽
[chara_part name="ajisai_w" eyebrow="normal" eye="toji_emi" mouth="v" effect="none"]
#&f.c_name
;[playse storage="TODO_voice_ajisai_bad01_06.ogg"]
言われると やってみたくなるんだよね[p]


; アジサイ: 通常・ジト目・むくれ
[chara_part name="ajisai_w" eyebrow="normal" eye="jito" mouth="mukure" effect="none"]
#&f.c_name
;[playse storage="TODO_voice_ajisai_bad01_07.ogg"]
でも ここは滅多に車 通らないし[p]


; アジサイ: 困り・通常・O
[chara_part name="ajisai_w" eyebrow="komari" eye="normal" mouth="o" effect="none"]
#&f.c_name
;[playse storage="TODO_voice_ajisai_bad01_08.ogg"]
なんだっけ？ トラック？[p]


; アジサイ: 怒り・目閉じ笑み・イー
[chara_part name="ajisai_w" eyebrow="okori" eye="toji_emi" mouth="i" effect="none"]
#&f.c_name
;[playse storage="TODO_voice_ajisai_bad01_09.ogg"]
絶対来ないよ ここ大通りでもないしさあ[p]


;★（別に 来ないなら来ないで いいんだけどね？）


; プレイヤー（内心）
#&f.p_name
（…………前からトラックが走ってくる）[p]


; TODO: 走ってくるトラック（アイコン）を表示
; TODO: SE ブーン
;[playse storage="TODO_se_truck.ogg"]


; 暗転
[chara_hide name="ajisai_w" time="200"]
[stop_xanim name="walk_bg_loop"]
[freeimage layer="0" page="fore"]
[bg storage="black.jpg" time="300"]
[wait time="300"]


; 回想: アナウンサーの声
;[playse storage="TODO_voice_announcer_recall.ogg"]
#アナウンサー
「車に水を引っかけられて 犬に顔を踏まれて」[r]
「傘が壊れるでしょう」[p]


; 背景止める（その場でフリーズ）
[stop_xanim name="walk_bg_loop"]


; プレイヤー（内心）
#&f.p_name
（手前には 大きな水たまりがある！）[p]

[hide_letterbox]

; BGM: 雨の音 FO（TODO）
;[fadeoutbgm time="1000"]


;★（さりげなく道路側を歩いておいて正解だった。このまま私が水を被れば、あなたは助かる！）


; ③◆分岐
[glink text="道路から離れる"      size="28" color="white" x="280" y="220" width="720" storage="scene/05_bad01_a.ks"]
[glink text="むしろ 道路に近づく" size="28" color="white" x="280" y="320" width="720" storage="scene/06_bad01_b.ks"]
[s]
