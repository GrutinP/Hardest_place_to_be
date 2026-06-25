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


; ============================================================
; アジサイ 通常立ち絵（ajisai_n）
; ============================================================
[chara_new name="ajisai_n" storage="chara/ajisai/dummy.png" jname="＊"]

; 傘（キャラの後ろ zindex=0）
[chara_layer name="ajisai_n" part="umbrella" id="none"  storage="chara/ajisai/kasa_none.png"  zindex="0"]
[chara_layer name="ajisai_n" part="umbrella" id="green" storage="chara/ajisai/kasa_green.png" zindex="0"]
[chara_layer name="ajisai_n" part="umbrella" id="red"   storage="chara/ajisai/kasa_red.png"   zindex="0"]

; ベース（キャラ本体 zindex=1）
[chara_layer name="ajisai_n" part="base" id="normal" storage="chara/ajisai/base_normal.png" zindex="1"]

; 眉 zindex=2
[chara_layer name="ajisai_n" part="eyebrow" id="normal" storage="chara/ajisai/mayu_normal.png" zindex="2"]
[chara_layer name="ajisai_n" part="eyebrow" id="komari" storage="chara/ajisai/mayu_komari.png" zindex="2"]
[chara_layer name="ajisai_n" part="eyebrow" id="okori"  storage="chara/ajisai/mayu_okori.png"  zindex="2"]

; 目 zindex=3
[chara_layer name="ajisai_n" part="eye" id="normal"   storage="chara/ajisai/me_normal.png"   zindex="3"]
[chara_layer name="ajisai_n" part="eye" id="odoroki"  storage="chara/ajisai/me_odoroki.png"  zindex="3"]
[chara_layer name="ajisai_n" part="eye" id="toji"     storage="chara/ajisai/me_toji.png"     zindex="3"]
[chara_layer name="ajisai_n" part="eye" id="jito"     storage="chara/ajisai/me_jito.png"     zindex="3"]
[chara_layer name="ajisai_n" part="eye" id="toji_emi" storage="chara/ajisai/me_toji_emi.png" zindex="3"]

; 口 zindex=4
[chara_layer name="ajisai_n" part="mouth" id="normal"   storage="chara/ajisai/kuchi_normal.png"   zindex="4"]
[chara_layer name="ajisai_n" part="mouth" id="o"        storage="chara/ajisai/kuchi_o.png"        zindex="4"]
[chara_layer name="ajisai_n" part="mouth" id="emi"      storage="chara/ajisai/kuchi_emi.png"      zindex="4"]
[chara_layer name="ajisai_n" part="mouth" id="i"        storage="chara/ajisai/kuchi_i.png"        zindex="4"]
[chara_layer name="ajisai_n" part="mouth" id="x"        storage="chara/ajisai/kuchi_x.png"        zindex="4"]
[chara_layer name="ajisai_n" part="mouth" id="he"       storage="chara/ajisai/kuchi_he.png"       zindex="4"]
[chara_layer name="ajisai_n" part="mouth" id="urotatae" storage="chara/ajisai/kuchi_urotatae.png" zindex="4"]
[chara_layer name="ajisai_n" part="mouth" id="v"        storage="chara/ajisai/kuchi_v.png"        zindex="4"]
[chara_layer name="ajisai_n" part="mouth" id="mukure"   storage="chara/ajisai/kuchi_mukure.png"   zindex="4"]

; エフェクト zindex=5
[chara_layer name="ajisai_n" part="effect" id="none"          storage="chara/ajisai/eff_none.png"          zindex="5"]
[chara_layer name="ajisai_n" part="effect" id="akagao_weak"   storage="chara/ajisai/eff_akagao_weak.png"   zindex="5"]
[chara_layer name="ajisai_n" part="effect" id="akagao_strong" storage="chara/ajisai/eff_akagao_strong.png" zindex="5"]
[chara_layer name="ajisai_n" part="effect" id="ase"           storage="chara/ajisai/eff_ase.png"           zindex="5"]

; 汚れ：水浸し（f.if_chara_splashed） zindex=6
[chara_layer name="ajisai_n" part="bad01" id="0" storage="chara/ajisai/dummy.png"            zindex="6"]
[chara_layer name="ajisai_n" part="bad01" id="1" storage="chara/ajisai/yogore_splash_on.png" zindex="6"]

; 汚れ：犬の足跡（f.if_chara_stomped） zindex=7
[chara_layer name="ajisai_n" part="bad02" id="0" storage="chara/ajisai/dummy.png"           zindex="7"]
[chara_layer name="ajisai_n" part="bad02" id="1" storage="chara/ajisai/yogore_ashi_on.png"  zindex="7"]

; 汚れ：葉・枝（f.if_chara_stucked） zindex=8
[chara_layer name="ajisai_n" part="bad03" id="0" storage="chara/ajisai/dummy.png"         zindex="8"]
[chara_layer name="ajisai_n" part="bad03" id="1" storage="chara/ajisai/yogore_ha_on.png"  zindex="8"]


; ============================================================
; アジサイ 歩き立ち絵（ajisai_w）
; ============================================================
[chara_new name="ajisai_w" storage="chara/ajisai/dummy.png" jname="＊"]

; ベース（キャラ本体 zindex=1）
[chara_layer name="ajisai_w" part="base" id="normal" storage="chara/ajisai/base_walk.png" zindex="1"]

; 眉 zindex=2
[chara_layer name="ajisai_w" part="eyebrow" id="normal" storage="chara/ajisai/mayu_normal.png" zindex="2"]
[chara_layer name="ajisai_w" part="eyebrow" id="komari" storage="chara/ajisai/mayu_komari.png" zindex="2"]
[chara_layer name="ajisai_w" part="eyebrow" id="okori"  storage="chara/ajisai/mayu_okori.png"  zindex="2"]

; 目 zindex=3
[chara_layer name="ajisai_w" part="eye" id="normal"   storage="chara/ajisai/me_normal.png"   zindex="3"]
[chara_layer name="ajisai_w" part="eye" id="odoroki"  storage="chara/ajisai/me_odoroki.png"  zindex="3"]
[chara_layer name="ajisai_w" part="eye" id="toji"     storage="chara/ajisai/me_toji.png"     zindex="3"]
[chara_layer name="ajisai_w" part="eye" id="jito"     storage="chara/ajisai/me_jito.png"     zindex="3"]
[chara_layer name="ajisai_w" part="eye" id="toji_emi" storage="chara/ajisai/me_toji_emi.png" zindex="3"]

; 口 zindex=4
[chara_layer name="ajisai_w" part="mouth" id="normal"   storage="chara/ajisai/kuchi_normal.png"   zindex="4"]
[chara_layer name="ajisai_w" part="mouth" id="o"        storage="chara/ajisai/kuchi_o.png"        zindex="4"]
[chara_layer name="ajisai_w" part="mouth" id="emi"      storage="chara/ajisai/kuchi_emi.png"      zindex="4"]
[chara_layer name="ajisai_w" part="mouth" id="i"        storage="chara/ajisai/kuchi_i.png"        zindex="4"]
[chara_layer name="ajisai_w" part="mouth" id="x"        storage="chara/ajisai/kuchi_x.png"        zindex="4"]
[chara_layer name="ajisai_w" part="mouth" id="he"       storage="chara/ajisai/kuchi_he.png"       zindex="4"]
[chara_layer name="ajisai_w" part="mouth" id="urotatae" storage="chara/ajisai/kuchi_urotatae.png" zindex="4"]
[chara_layer name="ajisai_w" part="mouth" id="v"        storage="chara/ajisai/kuchi_v.png"        zindex="4"]
[chara_layer name="ajisai_w" part="mouth" id="mukure"   storage="chara/ajisai/kuchi_mukure.png"   zindex="4"]

; エフェクト zindex=5
[chara_layer name="ajisai_w" part="effect" id="none"          storage="chara/ajisai/eff_none.png"          zindex="5"]
[chara_layer name="ajisai_w" part="effect" id="akagao_weak"   storage="chara/ajisai/eff_akagao_weak.png"   zindex="5"]
[chara_layer name="ajisai_w" part="effect" id="akagao_strong" storage="chara/ajisai/eff_akagao_strong.png" zindex="5"]
[chara_layer name="ajisai_w" part="effect" id="ase"           storage="chara/ajisai/eff_ase.png"           zindex="5"]

; 汚れ：水浸し（f.if_chara_splashed） zindex=6
[chara_layer name="ajisai_w" part="bad01" id="0" storage="chara/ajisai/dummy.png"            zindex="6"]
[chara_layer name="ajisai_w" part="bad01" id="1" storage="chara/ajisai/yogore_splash_on.png" zindex="6"]

; 汚れ：犬の足跡（f.if_chara_stomped） zindex=7
[chara_layer name="ajisai_w" part="bad02" id="0" storage="chara/ajisai/dummy.png"           zindex="7"]
[chara_layer name="ajisai_w" part="bad02" id="1" storage="chara/ajisai/yogore_ashi_on.png"  zindex="7"]

; 汚れ：葉・枝（f.if_chara_stucked） zindex=8
[chara_layer name="ajisai_w" part="bad03" id="0" storage="chara/ajisai/dummy.png"         zindex="8"]
[chara_layer name="ajisai_w" part="bad03" id="1" storage="chara/ajisai/yogore_ha_on.png"  zindex="8"]


; 変数初期化
[iscript]
    f.p_name = '' // プレイヤーの名前
    f.p_sign = 0 // プレイヤーの星座番号（1〜12）
    f.c_sign = 12 // ヒロインの星座番号（初期値12=魚座。f.p_sign==12 なら 6 に変更）
    f.chara_saved = 0 // ヒロインがひどい目にあった回数（③A/⑥A/⑧Aで+1、最大3）
    f.if_chara_splashed = 0 // 立ち絵汚れパーツ：水浸し（③A選択で1）
    f.if_chara_stomped = 0 // 立ち絵汚れパーツ：犬の足跡（⑥A選択で1）
    f.if_chara_stucked = 0 // 立ち絵汚れパーツ：葉・枝（3つめの不幸後で1）
[endscript]

[jump storage="scene/01_avan.ks"]

[s]
