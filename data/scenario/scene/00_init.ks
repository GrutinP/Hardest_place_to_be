;=============================================================
; 00_init.ks  初期化・キャラ定義
; ← title.ks（はじめから）
;=============================================================

[cm]
[clearfix]
[start_keyconfig]
[showmenubutton]

; メッセージレイヤーを表示（first.ksでタイトル中は非表示にしている）
[layopt layer="message0" visible="true"]

; ※ メッセージウィンドウ・フォント・名前エリアは
;    theme_kopanda_20 プラグイン（first.ks）が設定済み。
;    [position] [font] [deffont] [ptext] を重複設定しないこと（テーマを上書きしてしまう）

; キャラクター定義（jname="＊" → #ajisai でセリフ時に名前欄に＊が出る）
[chara_new name="ajisai" storage="chara/ajisai/normal.png" jname="＊"]
; 赤面
[chara_face name="ajisai" face="red"             storage="chara/ajisai/red_face.png"]
; 水濡れ
[chara_face name="ajisai" face="wet"             storage="chara/ajisai/wet.png"]
; 濡れ+犬
[chara_face name="ajisai" face="wet_dog"         storage="chara/ajisai/wet_dog.png"]
; 犬顔
[chara_face name="ajisai" face="dog"             storage="chara/ajisai/dog.png"]
; 葉っぱ
[chara_face name="ajisai" face="leaves"          storage="chara/ajisai/leaves.png"]
; 壊れ傘
[chara_face name="ajisai" face="umbrella_broken" storage="chara/ajisai/umbrella_broken.png"]
; 赤い傘
[chara_face name="ajisai" face="umbrella_red"    storage="chara/ajisai/umbrella_red.png"]

; 変数初期化
; プレイヤーの名前
[eval exp="f.p_name = ''"]
; プレイヤーの星座番号（1〜12）
[eval exp="f.p_sign = 0"]
; ヒロインの星座番号（初期値12=魚座。f.p_sign==12 なら 6 に変更）
[eval exp="f.c_sign = 12"]
; ヒロインがひどい目にあった回数（③A/⑥A/⑧Aで+1、最大3）
[eval exp="f.chara_saved = 0"]
; 立ち絵汚れパーツ：水浸し（③A選択で1）
[eval exp="f.if_chara_splashed = 0"]
; 立ち絵汚れパーツ：犬の足跡（⑥A選択で1）
[eval exp="f.if_chara_stomped = 0"]
; 立ち絵汚れパーツ：葉・枝（3つめの不幸後で1）
[eval exp="f.if_chara_stucked = 0"]

[jump storage="scene/01_avan.ks"]

[s]
