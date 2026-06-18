# 移植手順 — UI一括変換プラグイン（kopandaテーマ）ブランド改造キット

「１１番目が１番ツライ！」用に、既存の **`theme_kopanda_20`（テーマ一括変換プラグイン）を改造**して、
**色・ボタン・メッセージウィンドウ**をこのゲームのデザインに合わせる最小キットです。

> **対象範囲（今回）：** 色 / glinkボタン / 確認ダイアログ / セーブ・ロード・バックログの色 / メッセージウィンドウの枠。
> **対象外（今回は触らない）：** 雨の演出、メニュー画面の傘アニメ、システムボタンのアイコン差し替え。

既存のプラグインの仕組み（`[plugin]` 引数・`[loadcss]`・`frame_message.png` の9スライス・`.ts20` クラス）を
そのまま使うので、**追記2行＋ファイル2つの差し替え/追加**だけで戻せます。

---

## このキットの中身

| キット内のファイル | 役割 |
|---|---|
| `image/frame_message.png` | ブランド版メッセージ枠（1280×160・半透明スレート＋赤いアクセント線）。元の同名ファイルを置き換える |
| `ts11_override.css` | 色・ボタン・ダイアログ・一覧の上書きCSS（`ts20.css` の後に読む） |
| `README_移植手順.md` | この手順書 |

---

## 配置先（ゲームリポジトリ `１１番目が１番ツライ！/` 内）

| キット内 | コピー先（上書き/追加） |
|---|---|
| `image/frame_message.png` | `data/others/plugin/theme_kopanda_20/image/frame_message.png` ← **上書き**（元をバックアップ） |
| `ts11_override.css` | `data/others/plugin/theme_kopanda_20/ts11_override.css` ← **新規追加** |

そのうえで、テキストを2か所だけ編集します（下記）。

---

## 手動でやる場合（4ステップ）

1. **メッセージ枠を差し替え**
   `data/others/plugin/theme_kopanda_20/image/frame_message.png` を、キットの同名ファイルで上書き（元ファイルは `frame_message_kopanda.png` などにリネームして保管）。

2. **上書きCSSを置く**
   キットの `ts11_override.css` を `data/others/plugin/theme_kopanda_20/` に置く。

3. **CSSを読み込む（init.ks に1行追加）**
   `data/others/plugin/theme_kopanda_20/init.ks` の中の
   ```
   [loadcss file="./data/others/plugin/theme_kopanda_20/ts20.css"]
   ```
   の **直後** に、次の1行を追加：
   ```
   [loadcss file="./data/others/plugin/theme_kopanda_20/ts11_override.css"]
   ```

4. **フォント色をブランドに（first.ks のプラグイン呼び出しに引数追加）**
   `first.ks` の
   ```
   [plugin name="theme_kopanda_20"]
   ```
   を、次のように引数付きへ：
   ```
   [plugin name="theme_kopanda_20" font_color="0xECECF6" name_color="0x9A9BDD" font_color2="0xC4C8DE"]
   ```
   - `font_color`（本文）= `#ECECF6`
   - `name_color`（名前）= `#9A9BDD`（紫陽花ソフト＝ヒロインの色）
   - `font_color2`（既読）= `#C4C8DE`

これだけです。glinkボタンは従来どおり `color="ts20"` のままでブランド配色になります。

---

## Claude Code への指示（このままコピペ）

> 下のブロックをそのまま Claude Code に貼ってください。`frame_message.png` だけはバイナリなので、
> このデザインツールからダウンロードした `theme_11th/image/frame_message.png` を、指示どおりの場所に置いてもらってください
> （Claude Codeはテキストファイルの作成・編集を行います）。

```text
あなたは TyranoScript（TyranoStudio）製ゲーム「１１番目が１番ツライ！」のリポジトリで作業しています。
既存のUI一括変換プラグイン data/others/plugin/theme_kopanda_20 を「改造」して、
色・glinkボタン・確認ダイアログ・セーブ/ロード/バックログの色・メッセージウィンドウ枠を
ブランドデザインに合わせてください。雨やメニューの傘アニメ、システムボタンのアイコンは今回は触らないでください。

手順:

1) バックアップ:
   - data/others/plugin/theme_kopanda_20/image/frame_message.png を
     frame_message_kopanda_backup.png にコピーして残す。

2) メッセージ枠の差し替え:
   - 別途渡す画像ファイル frame_message.png（1280×160）で
     data/others/plugin/theme_kopanda_20/image/frame_message.png を上書きする。
     （バイナリのため、ユーザーが手元に配置済み/配置する。存在を確認するだけでよい）

3) 上書きCSSの新規作成:
   - data/others/plugin/theme_kopanda_20/ts11_override.css を新規作成し、
     後述の「ts11_override.css の内容」を一字一句そのまま書き込む。

4) CSSの読み込み（init.ks の編集）:
   - data/others/plugin/theme_kopanda_20/init.ks 内の
       [loadcss file="./data/others/plugin/theme_kopanda_20/ts20.css"]
     という行の直後に、次の1行を追加する:
       [loadcss file="./data/others/plugin/theme_kopanda_20/ts11_override.css"]

5) フォント色（first.ks の編集）:
   - first.ks 内の [plugin name="theme_kopanda_20"]（引数なし）を、次に置き換える:
       [plugin name="theme_kopanda_20" font_color="0xECECF6" name_color="0x9A9BDD" font_color2="0xC4C8DE"]
   - すでに引数が付いている場合は font_color / name_color / font_color2 だけ上記の値に更新する。

6) 変更後、TyranoStudio または npm/プレビューでゲームを起動し、
   - メッセージウィンドウがスレート色の半透明枠＋上辺に赤いラインになっていること
   - [glink color="ts20"] のボタンがホバーで赤枠＋押下で4px沈むこと
   - 確認ダイアログのOKが赤・キャンセルが青灰になっていること
   を目視確認する。問題があれば原因を報告する。

注意:
- クラス名（.ts20, .remodal など）は変更しない。既存のシナリオ(.ks)はそのまま動くこと。
- ts20.css 本体は編集せず、ts11_override.css による上書きで実現する（戻しやすさ重視）。

----- ts11_override.css の内容 ここから -----
/* 11th Place — theme_kopanda_20 ブランド上書きCSS（ts11_override.css）
   ts20.css の「後」に読み込むこと。 */

/* --- glink ボタン（[glink color="ts20"]） --- */
.ts20 {
  background: #2b3350;
  color: #ececf6;
  border: 1.5px solid rgba(196,200,222,.22);
  border-radius: 12px;
  box-shadow: 0 4px 0 #1a1f3a;
  text-shadow: none;
  font-weight: 700;
  transition: transform .1s ease, background .15s, border-color .15s, color .15s;
}
.ts20::before { display: none; }
.ts20:hover {
  background: #353f63;
  color: #ffffff;
  border: 1.5px solid #e2483d;
  box-shadow: 0 4px 0 #1a1f3a;
}
.ts20:active {
  background: #232a45;
  color: #f15a4d;
  border: 1.5px solid #b9322a;
  box-shadow: none;
  transform: translateY(4px);
}

/* --- 確認ダイアログ（remodal） --- */
.remodal {
  color: #dcdcf0;
  background: #1a1f3a;
  border: 1px solid rgba(196,200,222,.18);
  border-radius: 14px;
}
.remodal-confirm {
  color: #fff; background: #e2483d;
  border: none; border-radius: 999px; transition: all .12s;
}
.remodal-confirm:hover, .remodal-confirm:focus { background: #f15a4d; transform: translateY(-2px); }
.remodal-confirm:hover:active { background: #b9322a; transform: translateY(0); }
.remodal-cancel {
  color: #fff; background: #4a5270;
  border: none; border-radius: 999px; transition: all .12s;
}
.remodal-cancel:hover, .remodal-cancel:focus { background: #5a6486; transform: translateY(-2px); }
.remodal-cancel:hover:active { background: #4a5270; transform: translateY(0); }

/* --- バックログ --- */
.log_body { color: #c4c8de; }
.log_body::-webkit-scrollbar-thumb { background: #7b7fce; }
.log_body::-webkit-scrollbar-track { background: rgba(18,22,42,.55); }

/* --- セーブ／ロード一覧 --- */
.area_save_list::-webkit-scrollbar-thumb { background: #7b7fce; }
.area_save_list::-webkit-scrollbar-track { background: rgba(18,22,42,.55); }
.save_list_item_date { color: #ececf6; }
.save_list_item_text { color: #9aa0bd; }
.save_list_item:hover > .save_list_item_thumb,
.save_list_item:hover > .save_list_item_area {
  box-shadow: inset 0 0 0 1.5px rgba(123,127,206,.55);
}
----- ts11_override.css の内容 ここまで -----
```

---

## 元に戻すには

1. `frame_message.png` をバックアップ（`frame_message_kopanda_backup.png`）から戻す。
2. `init.ks` に足した `ts11_override.css` の `[loadcss]` 行を削除。
3. `first.ks` の `[plugin ...]` を引数なしに戻す。
4. `ts11_override.css` を削除。

---

## 補足

- これは**実機で動く正規の改造**です（既存プラグインのCSS上書き＋引数指定のみ）。AIが生成したReact/HTMLは“見た目の仕様書”で、実機にはこのキットの形で載ります。
- 次の段階（任意）：システムボタンのアイコン差し替え（ブランドのラインアイコンをPNG書き出し）、コンフィグ画面の作り込み、メッセージ送りグリフ（▼）のブランド版、傘メニューのCSS/APNG化。必要になったら言ってください。
