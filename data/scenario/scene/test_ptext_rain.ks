;=============================================================
; test_ptext_rain.ks  雨エフェクトテスト
; マクロは scene/macro.ks で定義済み（first.ks で読み込み）
;=============================================================

[return]

;=============================================================
; ↓ テスト用処理（first.ks の [call] では通らない、[jump] で直接来たとき用）
;=============================================================
[cm]
[clearstack]
[start_walk_bg]
[show_letterbox]
[layopt layer="message0" visible="false"]
[show_rain]
[chara_part name="ajisai_n" umbrella="red" base="normal" eyebrow="normal" eye="normal" mouth="normal" effect="none" bad01="0" bad02="0" bad03="0"]
[show_ajisai_n]
[s]
