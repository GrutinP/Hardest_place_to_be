# UI仕様書

## 全体構成

```
first.ks
├── [plugin name=tip]           TIPプラグイン
├── [plugin name=theme_kopanda_20]  テーマプラグイン（改造版）
└── title.ks

title.ks
├── はじめから → 00_init.ks
├── つづきから → セーブ/ロード画面
├── コンフィグ → config.ks
└── おまけ     → extra.ks
                 ├── あとがき
                 └── tips一覧

[ゲーム中]
システムボタン（メッセージウィンドウ上）
├── クイックセーブ
├── クイックロード
├── バックログ
└── メニュー → menu.ks（傘アニメーション）
               ├── セーブ画面へ
               ├── ロード画面へ
               ├── コンフィグ → config.ks
               └── タイトルに戻る
```

---

## タイトル画面（title.ks）

### ボタン構成
| ボタン | 遷移先 |
|---|---|
| はじめから | `scene/00_init.ks` |
| つづきから | ロード画面（`TYRANO.kag.saveLoad("load")`） |
| コンフィグ | `config.ks` |
| おまけ | `extra.ks` |

### 備考
- BGMはタイトルBGMを再生
- つづきから：セーブデータがない場合はグレーアウトまたはメッセージ表示（要検討）

---

## コンフィグ画面（config.ks）

**ベース：** `theme_kopanda_20/config.ks` を改造

### 設定項目

| 項目 | 段階 | 実装方法 |
|---|---|---|
| BGMボリューム | ミュート＋1〜10 | `[bgmopt volume=xx]` |
| SEボリューム | ミュート＋1〜10 | `[seopt volume=xx]` |
| ボイスボリューム | ミュート＋1〜10 | `[seopt volume=xx buf=1]`（buf=1をボイス専用） |
| テキストスピード | 1〜10 | `[configdelay speed=xx]` |

### テキストスピードプレビュー
- `gMessageTester.js`（kopandaプラグイン付属）をそのまま流用
- `sampletext.ks` に本作用のサンプルテキストを設定

### kopandaから削除する項目
- オートウェイト速度（オートモードボタン自体を非搭載のため）
- 未読スキップ設定（要検討：ゲーム性上なくても良いか）

### 呼び出し元
- タイトル画面から
- メニュー画面（傘）から
- 共通ファイルとして独立させる（`[call storage="config.ks"]` で呼び出し）

### 戻り先
- タイトルから開いた場合 → タイトルへ
- メニューから開いた場合 → ゲームに戻る（`[awakegame]`）
- `tf.config_from` などのフラグで分岐

---

## システムボタン（ゲーム中）

**ベース：** `theme_kopanda_20/init.ks` の `add_theme_button` マクロを改造

### ボタン構成
| ボタン | role / 動作 |
|---|---|
| クイックセーブ | `role="quicksave"` |
| クイックロード | `role="quickload"` |
| バックログ | `role="backlog"` |
| メニュー | `role="sleepgame"` + `storage="menu.ks"` |

### kopandaから削除するボタン
- Save / Load / Auto / Skip / Screen（フルスクリーン） / Config / Title / HideText
- → これらはメニュー画面（傘）で代替

### 表示制御
- `[add_theme_button]` マクロをゲーム開始時に呼び出す
- メニュー表示中は `[hidemenubutton]`、戻ったら `[add_theme_button]`

---

## メニュー画面（menu.ks）傘アニメーション

### 演出フロー

**開く**
1. `[sleepgame]` でゲーム一時停止
2. 半透明の黒板レイヤーをフェードイン（layer=2 など、opacity 指定）
3. 傘が開くAPNG（`kasa_open.apng`）を表示
4. `[wait time=xxx]` でアニメーション時間を待機
5. メニューボタン群をフェードイン

**閉じる**
1. メニューボタン群をフェードアウト
2. 傘が閉じるAPNG（`kasa_close.apng`）を表示
3. `[wait time=xxx]` で待機
4. 黒板レイヤーをフェードアウト
5. `[awakegame]` でゲーム再開

### APNGアセット
| ファイル名 | 内容 |
|---|---|
| `kasa_open.apng` | 傘が開くアニメーション（画面サイズより小さい、透過あり） |
| `kasa_close.apng` | 傘が閉じるアニメーション（開くの逆再生） |

### メニューボタン構成
| ボタン | 遷移先 |
|---|---|
| セーブ画面へ | `TYRANO.kag.saveLoad("save")` |
| ロード画面へ | `TYRANO.kag.saveLoad("load")` |
| コンフィグ | `config.ks`（`tf.config_from="menu"` を設定） |
| タイトルに戻る | `[jump storage="title.ks"]`（確認ダイアログ要検討） |

### レイヤー構成
```
layer=base    ゲーム背景（blur or 変更なし）
layer=2       半透明黒板（opacity=180程度）
layer=3       傘APNG
layer=4       メニューボタン群
```

---

## おまけ画面（extra.ks）

### コンテンツ
| 項目 | 内容 |
|---|---|
| あとがき | テキスト表示のみ |
| tips | `[tip_list]` でTIP一覧を表示 |

### 解放条件
- エンディング到達で解放（`sf.cleared` などのフラグ管理）
- 未解放時はグレーアウト or 非表示（要検討）

---

## プラグイン構成

| プラグイン | フォルダ | 役割 |
|---|---|---|
| theme_kopanda_20 | `data/others/plugin/theme_kopanda_20/` | UIテーマ・コンフィグ・テストメッセージ（改造して使用） |
| tip | `data/others/plugin/tip/` | TIPシステム |

### theme_kopanda_20 改造方針
- `init.ks`：`add_theme_button` マクロのボタン構成を4つに絞る
- `config.ks`：ボイス音量行を追加（buf=1専用）、不要項目を削除
- `sampletext.ks`：本作のサンプルテキストに差し替え
- HTML/CSS/画像：素材が揃い次第差し替え（暫定は既存画像で動作確認）

---

## ボイス音量の実装方針

- SEのbuf=1をボイス専用チャンネルとして使用
- ボイス再生時は常に `[playse buf=1 storage="xxx.ogg"]`
- 音量制御：`[seopt volume=xx buf=1]`
- ミュート：`[seopt volume=0 buf=1]`
- `sf.prev_vol_voice` でミュート前の音量を保存（kopandaのBGM/SEミュートと同方式）

---

## 未決事項

- [ ] 「つづきから」セーブデータなし時の挙動
- [ ] タイトルに戻る際の確認ダイアログ（「セーブしていないデータは消えます」等）
- [ ] おまけの解放条件・フラグ名
- [ ] 未読スキップをコンフィグに残すか
- [ ] システムボタンの表示位置・画像（素材待ち）
- [ ] 傘APNGのアニメーション時間（素材確定後に `[wait time]` を合わせる）
- [ ] メニュー背景の黒板opacity値（デザイン確認後）
