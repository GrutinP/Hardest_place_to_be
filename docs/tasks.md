← [README](README.md)

# 作業タスクリスト

---

## シナリオ実装

- [x] 00_init 変数・キャラ定義 （2026-06-24）
- [x] 01_avan 名前・星座入力UI・魚座分岐変数設定 （2026-06-26）
- [x] 02_opening テレビシーン （2026-06-24）
- [x] 03_prologue 出会い・相合傘 （2026-06-25）
- [x] 04_bad01 トラック水しぶき〜選択肢③ （2026-06-26）
- [x] 05_bad01_a ③A アジサイが水を被る（f.chara_saved+1 / f.if_chara_splashed=1） （2026-06-26）
- [x] 06_bad01_b ③B プレイヤーが水を被る （2026-06-26）
- [x] 07_bad02 大型犬〜選択肢⑥ （2026-06-27）
- [x] 08_bad02_a ⑥A 犬がアジサイに（f.chara_saved+1 / f.if_chara_stomped=1） （2026-06-27）
- [x] 09_bad02_b ⑥B 犬がプレイヤーに （2026-06-27）
- [x] 10_bad03 傘が壊れる〜選択肢⑧（f.if_chara_stucked=1） （2026-06-29）
- [x] 11_route_a ⑧A 走る（f.chara_saved+1 / f.if_chara_stucked=1） （2026-06-29）
- [x] 12_route_b ⑧B コンビニへ〜傘の色選択 （2026-06-29）
- [x] 13_route_b_green 緑の傘〜20_gate_common （2026-06-29）
- [x] 14_route_b_red 赤の傘〜選択肢⑩ （2026-06-29）
- [x] 15_route_b_red_yes 折りたたみ傘ネタばらし〜17_quiz （2026-06-29）
- [x] 16_route_b_red_no あたふた〜17_quiz （2026-06-29）
- [x] 17_quiz chara_saved分岐ルーター（プレースホルダー除去済み） （2026-06-29）
- [x] 18_quiz_main クイズ本編（イントロ台詞＋クイズUI＋正誤判定） （2026-06-29）
- [x] 19_quiz_wrong 不正解リアクション〜24_ed_1 （2026-06-29）
- [x] 20_gate_common 改札ED分岐 （2026-06-29）
- [x] 21_ed_a （2026-06-29）
- [x] 22_ed_b （2026-06-29）
- [x] 23_ed_c （2026-06-29）
- [x] 24_ed_1 改札内・赤い傘への想い〜ED① （2026-06-29）
- [x] 25_true_end 無言3表情→スチル・スタッフロール（TODO） （2026-06-29）

---

## 演出・マクロ

- [x] 横スクロール背景（start_walk_bg / erase_walk_bg） （2026-06-27）
- [x] 黒帯（show_letterbox / hide_letterbox） （2026-06-25）
- [x] 雨エフェクト（show_rain / hide_rain） （2026-06-25）
- [x] walk_bg_scroll_rev キーフレーム（魚座用逆スクロール） （2026-06-27）
- [x] show_rain の魚座対応（f.rain_deg） （2026-06-27）
- [x] show_ajisai_n / show_ajisai_w の魚座対応（reflect） （2026-06-27）
- [ ] トラックアイコン演出（04_bad01：登場アニメ / 05_bad01_a：消去アニメ）
- [ ] 犬アイコン演出（07_bad02：接近 / 08_bad02_a・09_bad02_b：衝突・消去）
- [ ] 水しぶき演出（05_bad01_a：横長画像を高速スクロール表示→消去）
- [ ] 風・枝葉・ゴミ演出（10_bad03：傘が壊れる場面）
- [ ] キャラ出現エフェクト（03_prologue：chara_pu_effect.png 素材待ち）

---

## UI

### タイトル画面

- [ ] タイトル画面の絵（本素材）
- [ ] ボタン：はじめから / つづきから / コンフィグ / おまけ

### テキストウィンドウ

- [ ] メッセージウィンドウのデザイン変更
- [ ] フォント変更
- [ ] ボタン：Qsave / Qload / backlog / メニュー

### 選択肢

- [ ] 赤傘・緑傘グラフィック（通常時）
- [ ] ホバー時のアニメーション
- [ ] クリック時の反応

### メニュー画面

- [ ] 背景用傘の開くアニメーション
- [ ] ボタン：セーブ / ロード / コンフィグ / タイトルに戻る

### コンフィグ画面

- [ ] ボイス音量スライダー追加 / 不要項目削除
- [ ] 傘アイコン（開/閉）でトグル表示

### セーブ・ロード画面

- [ ] レイアウト・画像変更（要素は変えない、配置・見た目のみ）

### おまけ画面

- [ ] tipsリスト
- [ ] スタッフあとがき（企画制作 / キャラデザ / 音楽 / 声優）

---

## エンディング演出

- [ ] EDa / EDb / EDc：クレジット表示（`・EDa・` 等プレースホルダーをグラフィックに差し替え）
- [ ] 25_true_end：スチルCG表示 + スタッフロール実装

---

## tips機能

- [ ] tips表示の実装（セリフ中の `;tips：` コメントを拾う仕組み）
- [ ] 魚座プレイヤー限定：tips で心の声を読める機能

---

## ローカライズ

- [ ] 対象言語・対応範囲の決定
- [ ] テキスト抽出・翻訳
- [ ] TyranoScript への差し込み

---

## 仮素材（開発中に必要）

- [x] 背景（data/bgimage/） （2026-06-29 統一再生成）
  - bg_tv.jpg / bg_ame_yane.jpg / bg_ame_michi.jpg / bg_ame_michi_loop.jpg / bg_eki_kaisatsu.jpg / black.jpg
  - bg_conbini.jpg ← 仮素材
  - bg_conbini_mae.jpg ← 仮素材（コンビニ前・軒下・雨なし / 13・14・15で使用）
  - bg_conbini_mae_zoom.jpg ← 仮素材（コンビニ前・軒下ズーム / 15の ajisai_w 区間で使用）
  - bg_eki_soto.jpg ← 仮素材
- [x] キャラ立ち絵パーツ（data/fgimage/chara/ajisai/） （2026-06-29 統一再生成・old整理）
  - base_normal.png / base_walk.png
  - mayu_normal.png / mayu_komari.png / mayu_okori.png
  - me_normal.png / me_odoroki.png / me_toji.png / me_toji_emi.png / me_jito.png
  - kuchi_normal.png / kuchi_o.png / kuchi_he.png / kuchi_i.png / kuchi_v.png / kuchi_x.png / kuchi_urotae.png / kuchi_mukure.png / kuchi_emi.png
  - eff_none.png / eff_akagao_weak.png / eff_akagao_strong.png / eff_ase.png
  - kasa_green.png / kasa_none.png / kasa_red.png / kasa_green_broken.png
  - yogore_splash_on.png（bad01）/ yogore_ashi_on.png（bad02）/ yogore_ha_on.png（bad03）
- [x] chara_pu_effect.png（data/fgimage/chara_pu_effect.png）← 仮素材 （2026-06-29）
- [x] トラックアイコン（data/fgimage/icon/truck.png）← 仮素材 （2026-06-29）
- [x] 犬アイコン（data/fgimage/icon/dog.png）← 仮素材 （2026-06-29）

---

## 本素材（後期）

- [ ] キャラ本素材（担当者へ仕様渡し）
- [ ] 背景写真撮影・加工
- [ ] タイトル画面の絵
- [ ] スチルCG（25_true_end）
- [ ] タイトルロゴ
- [ ] UIグラフィック一式（選択肢傘 / メニューボタン / テキストWボタン / 傘アイコン等）

---

## 音声素材

- [x] BGM（仮素材）: bgm_tv / bgm_ame / bgm_true_end ← 無音WAV。本素材に差し替える （2026-06-29）
- [x] SE（仮素材）: se_tv_on / se_tv_off / se_truck / se_splash / se_footstep / se_dog_bark / se_dog_run / se_kaze_tsuyoi / se_kasa_open / se_korogoru / se_tachiagaru / se_harau / se_hashiru_start / se_ame_loop / se_dog_hah ← 無音WAV （2026-06-26）
- [ ] ボイス（フルボイスか一部かは未定）
