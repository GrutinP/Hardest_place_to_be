← [README](README.md)

# TIPプラグイン — プロジェクトメモ

外部プラグイン（作者：hororo）。詳細仕様は http://hororo.wp.xdomain.jp/22/

---

## 導入済み設定

`first.ks` で読み込み済み：
```
[plugin name=tip]
```

TIPデータ: `data/others/plugin/tip/csv/tip_data.csv`（UTF-8）

---

## このプロジェクトでの使い方

### シナリオ中でTIPを埋め込む

```ks
[tip key="hoge"]ほげ[endtip]
```

### TIP一覧画面

```ks
[tip_list]
[s]
```

### csv の書式（1行目は見出し固定）

```
key,title,tip
hoge,タイトル,詳細テキスト
```

---

## 注意

- `key` 列の見出し名は変更不可
- ゲーム公開時は `data/others/plugin/tip/sample/` フォルダを削除する
