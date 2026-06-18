;=============================================================
; 11_route_a.ks  Aルート：駅まで走る〜改札前まで
; ← 10_bad03.ks（選択肢⑧A）
;=============================================================

[cm]
【11_route_a: Aルート — ⑧A「走ろう」→ ヒロインの手を引いて駅まで走る / f.chara_saved++】[p]
; ⑧A：プレイヤーがキャラの手を引いて走った → キャラがひどい目（雨に叩かれる）
[eval exp="f.chara_saved++"]

; ルート識別（tf＝一時変数、セーブデータに含まれない）
[eval exp="tf.route='a'"]

; キャラ：戸惑いながらも手を引かれて走る

;[se storage="TODO_se_rain_heavy.ogg"]

; ナレーション：大粒の雨に叩かれながら走る
; ナレーション：キャラが手を離さないよう言う

[bg storage="bg_eki_kaisatsu.jpg" time="500"]

; ナレーション：駅に着いた、二人ともボロボロ
[eval exp="f.if_chara_stucked=1"]

; キャラ：息を切らして「なんで私ダイエットに付き合ってるの？」

; ⑨A影響なし（ダイエットネタ）
【11_route_a: 選択肢⑨A — ダイエット発言（影響なし）→ 20_gate_commonへ】[p]
[glink text="ダイエット？ もう諦めたよ"  size="28" color="white" x="280" y="220" width="720" target="*choice9a_cont"]
[glink text="先週 ダイエットやめたんだ" size="28" color="white" x="280" y="320" width="720" target="*choice9a_cont"]
[s]

*choice9a_cont
[cm]

; キャラ：ぼやきながら改札へ

[jump storage="scene/20_gate_common.ks"]

[s]
