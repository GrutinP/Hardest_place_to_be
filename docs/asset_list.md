# 画像素材リスト（キャラ以外）

凡例： ✅ 仮素材あり　🔲 未作成　📌 要検討

---

## 背景画像（data/bgimage/）

| ファイル名 | 用途 | シーン | 状態 |
|---|---|---|---|
| bg_tv.jpg | テレビ画面（占いコーナー） | 02_opening | ✅ 仮 |
| bg_ame_yane.jpg | 軒下（雨宿り・キャラ登場） | 03_prologue | ✅ 仮 |
| bg_ame_michi.jpg | 雨の歩道（道中全般） | 04_bad01〜10_bad03 | ✅ 仮 |
| bg_eki_kaisatsu.jpg | 駅の改札内 | 11_route_a〜24_ed_1 | ✅ 仮 |
| black.jpg | 暗転用（1px黒） | 全体 | ✅ |
| **bg_conbini.jpg** | コンビニ内部（キャラなし場面） | 12_route_b | 🔲 |
| **bg_eki_soto.jpg** | 改札の外・傘の下（真エンド専用） | 25_true_end | 🔲 |

---

## スチルCG（data/bgimage/ または data/image/）

| ファイル名 | 用途 | シーン | 状態 |
|---|---|---|---|
| **cg_true_end.png** | 真エンドスチル（赤い傘・二人） | 25_true_end | 🔲 |

---

## UI・システム素材（data/image/）

### タイトル画面（data/image/title/）

| ファイル名 | 用途 | 状態 |
|---|---|---|
| **bg_title.png** | タイトル画面背景 | 🔲 |
| **title_logo.png** | タイトルロゴ「１１番目が１番ツライ！」 | 🔲 |
| **btn_start.png / btn_start2.png** | はじめから（通常/ホバー） | 🔲 |
| **btn_load.png / btn_load2.png** | つづきから（通常/ホバー） | 🔲 |
| **btn_config.png / btn_config2.png** | 設定（通常/ホバー） | 🔲 |
| **btn_omake.png / btn_omake2.png** | おまけ（通常/ホバー） | 🔲 |

※ `data/image/title/` にデフォルト素材あるが全部差し替え予定

### メッセージウィンドウ

| ファイル名 | 用途 | 状態 |
|---|---|---|
| frame.png | メッセージウィンドウ枠 | ✅ デフォルト（要差し替え） |

### システムボタン（ゲーム中4種）

| ファイル名 | 用途 | 状態 |
|---|---|---|
| **btn_sys_qsave.png / _hover.png** | クイックセーブ | 🔲 |
| **btn_sys_qload.png / _hover.png** | クイックロード | 🔲 |
| **btn_sys_backlog.png / _hover.png** | バックログ | 🔲 |
| **btn_sys_menu.png / _hover.png** | メニュー（傘アイコン） | 🔲 |

※ theme_kopanda_20のsave/load/auto/skip/screenは使わない予定

### メニュー画面（傘アニメーション）

| ファイル名 | 用途 | 状態 |
|---|---|---|
| **menu_umbrella_open.apng** | 傘が開くアニメーション | 🔲 |
| **menu_umbrella_close.apng** | 傘が閉じるアニメーション | 🔲 |
| **menu_overlay.png** | 半透明黒オーバーレイ | 🔲 |
| **menu_btn_resume.png / _hover.png** | ゲームに戻る | 🔲 |
| **menu_btn_save.png / _hover.png** | セーブ | 🔲 |
| **menu_btn_load.png / _hover.png** | ロード | 🔲 |
| **menu_btn_config.png / _hover.png** | 設定 | 🔲 |
| **menu_btn_title.png / _hover.png** | タイトルへ | 🔲 |

### コンフィグ画面

| ファイル名 | 用途 | 状態 |
|---|---|---|
| bg_config.png | コンフィグ背景 | ✅ デフォルト（要差し替え） |
| **config_slider_bg.png** | スライダー背景バー | 📌 theme流用か自作か |
| **config_slider_knob.png** | スライダーつまみ | 📌 同上 |
| **config_label_bgm.png** | BGMラベル | 🔲 |
| **config_label_se.png** | SEラベル | 🔲 |
| **config_label_voice.png** | ボイスラベル | 🔲 |
| **config_label_speed.png** | テキスト速度ラベル | 🔲 |

---

## 音声素材（data/sound/）※参考：現在全て未作成

### BGM

| ファイル名 | 用途 | 状態 |
|---|---|---|
| **bgm_tv.ogg** | テレビ占いコーナー | 🔲 |
| **bgm_ame.ogg** | 雨の道中（メインBGM） | 🔲 |
| **bgm_true_end.ogg** | 真エンド | 🔲 |

### SE

| ファイル名 | 用途 | 状態 |
|---|---|---|
| **se_ame_loop.ogg** | 雨音ループ | 🔲 |
| **se_tv_off.ogg** | テレビを消す | 🔲 |
| **se_splash.ogg** | 水しぶき | 🔲 |
| **se_dog_run.ogg** | 犬が走ってくる足音 | 🔲 |
| **se_dog_bark.ogg** | 犬の声 | 🔲 |
| **se_kaze_tsuyoi.ogg** | 強い風 | 🔲 |
| **se_kasa_open.ogg** | 傘を開こうとする（×3回） | 🔲 |
| **se_shutter.ogg** | シャッター音（いいえルート） | 🔲 |

---

## 備考

- **キャラ立ち絵は別リスト**（docs/scenario_structure.md 参照）
- `data/image/button/` のデフォルトボタン画像は使わない or 一部流用予定
- コンビニ背景（bg_conbini.jpg）は⑧B選択時の一場面のみ。省略して暗転でも成立する
- 傘APNGはベクター素材を使うか、フレームPNG連番でも実現可能
