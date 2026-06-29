;一番最初に呼び出されるファイル

[title name="１１番目が１番ツライ！"]

[stop_keyconfig]


;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
[call storage="tyrano.ks"]

;TIPプラグイン
[plugin name="tip"]
;テーマ一括変換
[plugin name="theme_kopanda_19"]
;タップエフェクト
[plugin name="tap_effect"]

;雨エフェクト用CSS
[loadcss file="./tyrano/css/rain.css"]
;プロジェクト共通マクロ
[call storage="scene/macro.ks"]













;メッセージボックスは非表示
[layopt layer="message" visible="false"]

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

;タイトル画面へ移動
[jump storage="title.ks"]

[s]


