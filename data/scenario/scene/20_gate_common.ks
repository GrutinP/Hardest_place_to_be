;=============================================================
; 20_gate_common.ks  改札前（共通）〜ED分岐
; ← 11_route_a.ks（⑧Aルート） / 13_route_b_green.ks（⑧Bルート緑）
; → 21_ed_a.ks（chara_saved==3） / 22_ed_b.ks（1 or 2） / 23_ed_c.ks（0）
;=============================================================

[cm]

; 改札内へ（暗転から明転）
[bg storage="bg_eki_kaisatsu.jpg" time="500"]

; SE: 改札音（TODO ファイル名未定）
;[playse storage="se_kaisatsu.wav"]

; BGM: 駅BGM（TODO ファイル名未定・仮素材未作成）
;[fadeinbgm storage="bgm_eki.wav" loop="true" time="1000"]


; プレイヤー（内心）
#&f.p_name
（改札をくぐった）[p]

#&f.p_name
（彼女とはホームが別々だから ここでお別れだ）[p]


; ★ 傘パーツ: 前シーンから引き継ぎ（明示設定不要）
;              Aルート（11_route_a）経由 → green_broken（壊れた緑の傘）
;              Bルート緑（13_route_b_green）経由 → green（緑の傘）
;              ※ 11_route_a 側に umbrella="green_broken" の設定が必要（未実装）
; アジサイ 通常立ち絵 初期表示（通常・通常・通常・通常）
[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="normal" mouth="normal" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
[show_ajisai_n]


; アジサイ: 通常・目閉じ・通常
[chara_part name="ajisai_n" eyebrow="normal" eye="toji" mouth="normal"]
;[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="toji" mouth="normal" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
あのさ 占いって 当たり外れとか無い て話したじゃん[p]


; アジサイ: 通常・通常・笑み
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="emi"]
;[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="normal" mouth="emi" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
でも 私は占いに従って動くの 嫌いじゃ無いんだ[p]


; アジサイ: 困り・目閉じ・へ
[chara_part name="ajisai_n" eyebrow="komari" eye="toji" mouth="he"]
;[chara_part name="ajisai_n" base="normal" eyebrow="komari" eye="toji" mouth="he" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
どうしよう て迷ってるときに 誰かが言ってた [r]
…………と 思って行動できること あるでしょ？[p]


; アジサイ: 通常・通常・イー
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="i"]
;[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="normal" mouth="i" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
行動した結果 いいことが起きる予感がする [r]
ていう直感[p]


; アジサイ: 通常・目閉じ笑み・▽
[chara_part name="ajisai_n" eyebrow="normal" eye="toji_emi" mouth="v"]
;[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="toji_emi" mouth="v" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
誰でもいいから「そうすれば」て 言ってもらいたい時[p]


; アジサイ: 通常・通常・通常
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="normal" effect="none"]
;[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="normal" mouth="normal" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
それが占いでも 別にいいと思えること[p]


; アジサイ: 怒り・目閉じ笑み・イー
[chara_part name="ajisai_n" eyebrow="okori" eye="toji_emi" mouth="i"]
;[chara_part name="ajisai_n" base="normal" eyebrow="okori" eye="toji_emi" mouth="i" effect="none" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
私は 大事だと思うんだ[p]


; アジサイ: 通常・通常・笑み（赤面弱）
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="emi" effect="akagao_weak"]
;[chara_part name="ajisai_n" base="normal" eyebrow="normal" eye="normal" mouth="emi" effect="akagao_weak" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
#&f.c_name
……………………[p]


; ED分岐（chara_saved の値による）
[jump storage="scene/21_ed_a.ks" cond="f.chara_saved==3"]
[jump storage="scene/23_ed_c.ks" cond="f.chara_saved==0"]
[jump storage="scene/22_ed_b.ks"]

[s]
