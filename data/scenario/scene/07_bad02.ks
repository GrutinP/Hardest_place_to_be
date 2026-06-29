;=============================================================
; 07_bad02.ks  大型犬の登場〜選択肢⑥
; ← 05_bad01_a.ks（③A） / 06_bad01_b.ks（③B）
;=============================================================

[cm]


; BGM: 雨の音 FI
[fadeinbgm storage="bgm_ame.wav" loop="true" time="1000"]

; 歩き演出開始
[start_walk_bg]
[show_letterbox]
[show_rain]


; アジサイ 歩き立ち絵（汚れパーツは変数から）
[chara_part name="ajisai_w" base="normal" eyebrow="normal" eye="normal" mouth="normal" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
[show_ajisai_w]


; プレイヤー（内心）
#&f.p_name
（雨は降り続いている）[p]

#&f.p_name
（駅までは まだ遠い）[p]


; アジサイ: 通常・通常・O
[chara_part name="ajisai_w" eyebrow="normal" eye="normal" mouth="o"]
;[chara_part name="ajisai_w" base="normal" eyebrow="normal" eye="normal" mouth="o" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
あのさ 予言の自己成就って知ってる？[p]


; アジサイ: 困り・目閉じ・へ
[chara_part name="ajisai_w" eyebrow="komari" eye="toji" mouth="he"]
;[chara_part name="ajisai_w" base="normal" eyebrow="komari" eye="toji_emi" mouth="he" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
自分で そうなるかもー て考えながら行動してると [r]
そうなっちゃうぞ て話[p]


; アジサイ: 通常・通常・イー
[chara_part name="ajisai_w" eyebrow="normal" eye="normal" mouth="i"]
;[chara_part name="ajisai_w" base="normal" eyebrow="normal" eye="normal" mouth="i" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
占いにもそういう力があって [r]
引っ張られる人もいるんだよね

[wait time="100"]


; ⑤選択肢（影響なし）
[glink text="信じると 当たる？"               size="28" color="white" x="280" y="220" width="720" target="*choice5_cont"]
[glink text="じゃあ トラックが通ったのも……" size="28" color="white" x="280" y="320" width="720" target="*choice5_cont"]
[s]


*choice5_cont
[cm]


; アジサイ: 怒り・目閉じ・ｘ
[chara_part name="ajisai_w" eyebrow="okori" eye="toji" mouth="x"]
;[chara_part name="ajisai_w" base="normal" eyebrow="okori" eye="toji_emi" mouth="x" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
そのせいで トラックが出現して [r]
水ぶっかける てのは…………[p]


; アジサイ: 困り・目閉じ笑み・イー（汗）
[chara_part name="ajisai_w" eyebrow="komari" eye="toji_emi" mouth="i" effect="ase"]
;[chara_part name="ajisai_w" base="normal" eyebrow="komari" eye="toji_emi" mouth="i" effect="ase" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
考えすぎな 気もするけど[p]


; アジサイ: 通常・通常・へ
[chara_part name="ajisai_w" eyebrow="normal" eye="normal" mouth="he" effect="none"]
;[chara_part name="ajisai_w" base="normal" eyebrow="normal" eye="normal" mouth="he" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
こんな天気の日に 外歩いてればね [r]
そういう目に遭う可能性だって 高いわけだし[p]


; アジサイ: 通常・ジト目・▽（赤面弱）
[chara_part name="ajisai_w" eyebrow="normal" eye="jito" mouth="v" effect="akagao_weak"]
;[chara_part name="ajisai_w" base="normal" eyebrow="normal" eye="jito" mouth="v" effect="akagao_weak" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
でも 当事者は 結果的に [r]
占いが当たった と思うわけ[p]


;tips：（はい 私のことです）


; アジサイ: 困り・目閉じ・へ
[chara_part name="ajisai_w" eyebrow="komari" eye="toji" mouth="he" effect="none"]
;[chara_part name="ajisai_w" base="normal" eyebrow="komari" eye="toji_emi" mouth="he" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
次は 犬に顔を踏まれる だね[p]


; アジサイ: 困り・ジト目・▽
[chara_part name="ajisai_w" eyebrow="komari" eye="jito" mouth="v"]
;[chara_part name="ajisai_w" base="normal" eyebrow="komari" eye="jito" mouth="v" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
トラックはいいとして 犬なんて…………[r]
こんな雨の中 いるわけないじゃんねー[p]


; SE 犬のハッハッハッ（ループ・音量抑えめ）
[playse storage="se_dog_hah.wav" volume="50" loop="true"]

;ウェイト　犬のSEを聞かせる


; プレイヤー（内心）
#&f.p_name
（…………気のせいだろうか）[p]


#&f.p_name
（遠くから 犬の息づかいが 聞こえたような……？）[p]


; アジサイ: 通常・目閉じ・へ
[chara_part name="ajisai_w" eyebrow="normal" eye="toji" mouth="he"]
;[chara_part name="ajisai_w" base="normal" eyebrow="normal" eye="toji_emi" mouth="he" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
やっぱり いい加減な占いだよ[p]


;tips：（さすがに 犬は来ないだろ…………）


; TODO 犬アイコン（小さく）表示


; プレイヤー（内心）
#&f.p_name
（でかい犬が おおはしゃぎでこっちに向かってくる）[p]


; アジサイ: 怒り・目閉じ笑み・イー
[chara_part name="ajisai_w" eyebrow="okori" eye="toji_emi" mouth="i"]
;[chara_part name="ajisai_w" base="normal" eyebrow="okori" eye="toji_emi" mouth="i" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
1回 当たった程度で 信じるようじゃあ [r]
この国では生きていけないよね[p]


; アジサイ: 通常・通常・通常
[chara_part name="ajisai_w" eyebrow="normal" eye="normal" mouth="normal"]
;[chara_part name="ajisai_w" base="normal" eyebrow="normal" eye="normal" mouth="normal" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
え？[p]


; 背景アニメーション停止（その場で静止）・黒帯消し・雨消し
[stop_xanim name="walk_bg_loop"]
[hide_letterbox]


; TODO 犬アイコン（大きく）表示
; SE 犬のハッハッハッ（音量大）


; アジサイ: 通常・驚き・うろたえ
[chara_part name="ajisai_w" eyebrow="normal" eye="odoroki" mouth="urotae" effect="none"]
;[chara_part name="ajisai_w" base="normal" eyebrow="normal" eye="odoroki" mouth="urotae" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
えええぇぇぇっっっ？？？！！！[r]
なんでなんでなんでなんで？！[p]


; アジサイ: 怒り・目閉じ笑み・むくれ
[chara_part name="ajisai_w" eyebrow="okori" eye="toji_emi" mouth="mukure"]
;[chara_part name="ajisai_w" base="normal" eyebrow="okori" eye="toji_emi" mouth="mukure" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
言うから？！ [r]
言ったら出てきちゃったの？！


[wait time="500"]


; BGM FO
[fadeoutbgm time="1000"]


; ⑥選択肢◆（右に交わす → ⑥A / ぽち → ⑥B）
[glink text="右に交わす"                                    size="28" color="white" x="280" y="220" width="720" storage="scene/08_bad02_a.ks"]
[glink text="ぽち！ ぽちじゃないか！！ 探したんだぞ！！！" size="28" color="white" x="280" y="320" width="720" storage="scene/09_bad02_b.ks"]
[s]
