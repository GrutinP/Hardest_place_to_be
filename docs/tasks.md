← [README](README.md)

# 作業タスクリスト

---

## シナリオ実装

- [x] 00_init 変数・キャラ定義
- [x] 01_avan 名前・星座入力UI
- [x] 02_opening テレビシーン
- [x] 03_prologue 出会い・相合傘
- [x] 04_bad01 トラック水しぶき〜選択肢③
- [ ] 01_avan に魚座分岐変数（f.c_name / f.ch_reflect / f.rain_deg / f.walk_keyframe）設定を追加
- [ ] 05_bad01_a ③A アジサイが水を被る
- [ ] 06_bad01_b ③B プレイヤーが水を被る
- [ ] 07_bad02 大型犬〜選択肢⑥
- [ ] 08_bad02_a ⑥A 犬がアジサイに
- [ ] 09_bad02_b ⑥B 犬がプレイヤーに
- [ ] 10_bad03 傘が壊れる〜選択肢⑧
- [ ] 11_route_a ⑧A 走る
- [ ] 12_route_b ⑧B コンビニへ
- [ ] 13〜16 コンビニ・告白ルート
- [ ] 17_quiz 星座クイズ
- [ ] 18_quiz_main クイズ本編
- [ ] 20_gate_common 改札ED分岐
- [ ] 21_ed_a / 22_ed_b / 23_ed_c / 24_ed_1 / 25_true_end

### 各シーンに必要な処理（シナリオ実装と並行）

- [ ] 05・08・11 に f.chara_saved += 1 を追加
- [ ] 05 / 06 に f.if_chara_splashed 設定を追加
- [ ] 08 / 09 に f.if_chara_stomped 設定を追加
- [ ] 11以降に f.if_chara_stucked 設定を追加

---

## 演出・マクロ

- [x] 横スクロール背景（start_walk_bg / stop_walk_bg）
- [x] 黒帯（show_letterbox / hide_letterbox）
- [x] 雨エフェクト（show_rain / hide_rain）
- [ ] macro.ks に `walk_bg_scroll_rev` キーフレーム追加（魚座用逆スクロール）
- [ ] `show_rain` を `f.rain_deg` 対応に変更
- [ ] `show_ajisai_n` / `show_ajisai_w` に `reflect="&f.ch_reflect"` を組み込む
- [ ] トラックアイコン演出（04_bad01 TODO）
- [ ] 犬アイコン演出（07_bad02 TODO）

---

## 仮素材

- [x] 背景（bg_tv / bg_ame_yane / bg_ame_michi / bg_eki_kaisatsu / black）
- [x] キャラ立ち絵パーツ一式
- [x] kasa_green_broken 仮素材
- [ ] トラックアイコン仮素材（data/fgimage/icon/）
- [ ] 犬アイコン仮素材（data/fgimage/icon/）
- [ ] bg_conbini / bg_eki_soto（12_route_b / 25_true_end）

---

## 音声素材（全て未作成）

- [ ] BGM: bgm_tv / bgm_ame / bgm_true_end
- [ ] SE: se_splash / se_dog_run / se_dog_bark / se_kaze_tsuyoi / se_kasa_open など
- [ ] ボイス（フルボイスか一部かは未定）

---

## UI

- [ ] title.ks デザイン差し替え
- [ ] システムボタン4種の素材・実装
- [ ] メニュー画面（傘アニメーション）
- [ ] コンフィグ画面（ボイス音量追加・不要項目削除）
- [ ] おまけ画面（あとがき・tips一覧）

---

## 本素材（後期）

- [ ] キャラ本素材（担当者へ仕様渡し）
- [ ] 背景写真撮影・加工
- [ ] スチルCG（25_true_end）
- [ ] タイトルロゴ
