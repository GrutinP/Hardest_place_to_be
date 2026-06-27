← [README](README.md)

# 作業タスクリスト

---

## シナリオ実装

- [x] 00_init 変数・キャラ定義
- [x] 01_avan 名前・星座入力UI・魚座分岐変数設定
- [x] 02_opening テレビシーン
- [x] 03_prologue 出会い・相合傘
- [x] 04_bad01 トラック水しぶき〜選択肢③
- [ ] 05_bad01_a ③A アジサイが水を被る（f.chara_saved+1 / f.if_chara_splashed=1）
- [ ] 06_bad01_b ③B プレイヤーが水を被る
- [x] 07_bad02 大型犬〜選択肢⑥
- [x] 08_bad02_a ⑥A 犬がアジサイに（f.chara_saved+1 / f.if_chara_stomped=1）
- [x] 09_bad02_b ⑥B 犬がプレイヤーに
- [ ] 10_bad03 傘が壊れる〜選択肢⑧
- [ ] 11_route_a ⑧A 走る（f.chara_saved+1 / f.if_chara_stucked=1）
- [ ] 12_route_b ⑧B コンビニへ
- [ ] 13〜16 コンビニ・告白ルート
- [ ] 17_quiz 星座クイズ
- [ ] 18_quiz_main クイズ本編
- [ ] 20_gate_common 改札ED分岐
- [ ] 21_ed_a / 22_ed_b / 23_ed_c / 24_ed_1 / 25_true_end

---

## 演出・マクロ

- [x] 横スクロール背景（start_walk_bg / erase_walk_bg）
- [x] 黒帯（show_letterbox / hide_letterbox）
- [x] 雨エフェクト（show_rain / hide_rain）
- [x] walk_bg_scroll_rev キーフレーム（魚座用逆スクロール）
- [x] show_rain の魚座対応（f.rain_deg）
- [x] show_ajisai_n / show_ajisai_w の魚座対応（reflect）
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

- [x] 背景（bg_tv / bg_ame_yane / bg_ame_michi / bg_eki_kaisatsu / black）
- [x] キャラ立ち絵パーツ一式
- [x] kasa_green_broken 仮素材
- [ ] トラックアイコン（data/fgimage/icon/）
- [ ] 犬アイコン（data/fgimage/icon/）
- [ ] chara_pu_effect.png（03_prologue キャラ出現エフェクト）
- [ ] bg_conbini / bg_eki_soto（12_route_b / 25_true_end）

---

## 本素材（後期）

- [ ] キャラ本素材（担当者へ仕様渡し）
- [ ] 背景写真撮影・加工
- [ ] タイトル画面の絵
- [ ] スチルCG（25_true_end）
- [ ] タイトルロゴ
- [ ] UIグラフィック一式（選択肢傘 / メニューボタン / テキストWボタン / 傘アイコン等）

---

## 音声素材（全て未作成）

- [ ] BGM: bgm_tv / bgm_ame / bgm_true_end
- [ ] SE: se_tv_on / se_tv_off / se_truck / se_splash / se_footstep / se_dog_bark / se_dog_run / se_kaze_tsuyoi / se_kasa_open など
- [ ] ボイス（フルボイスか一部かは未定）
