# CLAUDE.md — 作業開始前に必ず読むこと

> **このファイルを読んでから作業を開始すること。1行も飛ばすな。**
> TyranoScriptの仕様を把握せずに作業を開始して実装ミスを繰り返すことは許可されていない。

---

## 【最重要】タグ名の使用ルール

**タグ名を書く場面を問わず（コード・計画・タスクリスト・説明・提案すべて）、必ず先にtag.jsonで存在を確認すること。**

- tag.jsonのパス: `e:\TyranoScript\tyrano_603\TyranoStudio_win_std_v603\resources\app\src\others\tag.json`
- 確認方法: PowerShellで `$json | ConvertFrom-Json | Select -ExpandProperty PSObject.Properties | Select Name` でタグ名一覧を取得
- **存在しないタグを提案することは実装ミスと同じ。計画段階でも禁止。**

### このプロジェクトで確認済みの主要タグ（tag.json照合済み）

| 用途 | 正しいタグ | 存在しないタグ（禁止） |
|---|---|---|
| 画像アニメーション | `[anim]` `[xanim]` `[kanim]` `[keyframe]` | `[move]` `[animate]` |
| キャラ移動 | `[chara_move]` | `[move]` |
| テキスト入力 | `[edit]` `[commit]` | `[input]` |
| 画面揺れ | `[quake]` `[quake2]` | |
| カメラ操作 | `[camera]` `[reset_camera]` `[wait_camera]` | |
| 立ち絵パーツ定義 | `[chara_layer]` | |
| 立ち絵パーツ切替 | `[chara_part]` | |
| 立ち絵表情切替 | `[chara_mod]` `[chara_face]` | |
| 画像表示/消去 | `[image]` `[freeimage]` | |
| レイヤ設定 | `[layopt]` | |
| フィルタ | `[filter]` | |
| 文字速度 | `[configdelay]` | |
| 条件分岐 | `[if]` `[elsif]` `[else]` `[endif]` | `[elseif]`（スペルが違う・存在しない） |
| SE再生 | `[playse]` | `[se]` |
| BGM再生/停止 | `[playbgm]` `[stopbgm]` `[fadeinbgm]` `[fadeoutbgm]` `[pausebgm]` `[resumebgm]` | `[bgm]` |

---

## ① 作業開始時の必須確認

**毎回タスク開始前に以下を実施すること：**

1. `docs/scenario_structure.md` を読む（分岐ロジック・変数の仕様書）
2. タグを書く・提案する前に必ずtag.jsonで存在確認する（上記ルール参照）
3. このファイルを最後まで読む

---

## ② TyranoScript コメント構文（頻出ミス）

### `;` はラインの先頭にある場合のみコメントになる

```
; これは正しいコメント（行頭のみ有効）
[eval exp="f.x = 0"]
```

### タグの後ろに `;` を書いてはいけない（テキストとして扱われる）

```
[eval exp="f.x = 0"]   ; ← これはコメントにならない。ゲーム内テキストになる
```

### 正しい書き方（変数定義の例）

```
; プレイヤーの名前
[eval exp="f.p_name = ''"]
; 星座番号（1〜12）
[eval exp="f.p_sign = 0"]
```

---

## ③ 変数スコープ

| プレフィックス | セーブ | 用途 |
|---|---|---|
| `f.` | セーブデータに含まれる | ゲームフラグ（星座・カウンター等） |
| `sf.` | システムセーブ（全データ共通） | CG閲覧フラグ等 |
| `tf.` | セーブされない一時変数 | ルート識別等 |

---

## ④ 分岐・ジャンプ構文

**`[if][jump][endif]` は使わない。IDEが警告を出す。**

```
; 正しい書き方
[jump storage="scene/21_ed_a.ks" cond="f.chara_saved==3"]

; 禁止（IDEがjump inside ifの警告を出す）
[if exp="f.chara_saved==3"]
[jump storage="scene/21_ed_a.ks"]
[endif]
```

---

## ⑤ メッセージレイヤーとテーマプラグイン

- `first.ks` で `[plugin name="theme_kopanda_20"]` を読み込み済み（カラー等はプラグイン側で設定）
- **メッセージウィンドウ・フォント色・名前エリアはすべてプラグインが管理する**
- `00_init.ks` で `[position]` `[font]` `[deffont]` `[ptext]` を重複設定しないこと（テーマを上書きしてしまう）
- `first.ks` でタイトル中は `[layopt layer="message" visible="false"]` で非表示
- `00_init.ks` の先頭で `[layopt layer="message0" visible="true"]` で再表示すること

---

## ⑥ このプロジェクトの主要変数

| 変数 | 型 | 用途 |
|---|---|---|
| `f.p_name` | string | プレイヤー名（01_avanで入力） |
| `f.p_sign` | number 1〜12 | プレイヤーの星座番号 |
| `f.c_sign` | number | ヒロインの星座（初期値12=魚座。f.p_sign==12なら6に変更） |
| `f.chara_saved` | number 0〜3 | ヒロインがひどい目に遭った回数（③A/⑥A/⑧Aで+1） |
| `f.if_chara_splashed` | 0/1 | 水浸しパーツ表示フラグ（③A選択で1） |
| `f.if_chara_stomped` | 0/1 | 犬足跡パーツ表示フラグ（⑥A選択で1） |
| `f.if_chara_stucked` | 0/1 | 葉・枝パーツ表示フラグ（⑧以降で1） |

---

## ⑦ ED分岐ロジック（20_gate_common.ks）

```
[jump storage="scene/21_ed_a.ks" cond="f.chara_saved==3"]  ; EDa
[jump storage="scene/23_ed_c.ks" cond="f.chara_saved==0"]  ; EDc
[jump storage="scene/22_ed_b.ks"]                           ; EDb
```

- `chara_saved==3` = ③A+⑥A+⑧Aすべて選択（ヒロインだけがひどい目）
- `chara_saved==0` = Bルート緑のみ到達可（⑧A選択で最低1になるため）
- `1 or 2` = EDb

---

## ⑧ キャラクター設定

- name: `ajisai`、jname: `＊`（`#ajisai` でセリフ時に名前欄に ＊ が出る）
- 画像パス: `data/fgimage/chara/ajisai/`
- face定義（00_init.ksで定義済み）: `red`, `wet`, `wet_dog`, `dog`, `leaves`, `umbrella_broken`, `umbrella_red`

---

## ⑨ シナリオファイル構造

```
data/scenario/first.ks      ← ゲーム起動の入口
data/scenario/title.ks      ← タイトル画面
data/scenario/scene/        ← シナリオ本体（00_init〜25_true_end）
data/others/plugin/theme_kopanda_20/  ← UIテーマプラグイン
docs/scenario_structure.md  ← 分岐・変数仕様書
```
