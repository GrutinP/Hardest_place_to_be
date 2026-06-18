# TIPプラグイン ver4.07c

http://hororo.wp.xdomain.jp/22/

2023/02/19更新 v521e確認版

---

## 概要

メッセージをクリックして、TIPを表示するプラグイン。  
TIP内容はCSVから読み込むため、表計算やデータベースソフト等で管理できる。  
html、css、jsRender の知識が必要。

---

## 機能

- テキストをクリックしてTIPを表示
- TIPデータはcsvファイルを読み込む
- csvファイルは複数読み込める（v4.00以降）
- TIPテキストの色変更
- TIPテキストにカーソルが乗った時の文字色指定（v3.00以降）
- TIPテキストにSE指定（v3.00以降）
- TIPテキストにマーク（v3.00以降）
- TIP詳細のページ分け（v3.00以降）
- TIP一覧の自動作成（v3.00以降）
- TIP表示フラグの保存（v3.00以降）
- フラグの手動変更（v4.00以降）
- バックログからのTIP表示指定（v3.00以降）
- TIP詳細・TIP一覧はhtmlファイルで編集可能
- TIP詳細のhtmlをcsv別に変更（v4.00以降）
- TIP詳細のテキストから別TIP詳細を表示（v4.00以降）
- ページ指定でTIP詳細を表示（v4.01以降）
- 未読マーク（v4.02以降）
- 縦書き対応（v3.04以降）

---

## 導入手順

1. `data/others/plugin` に `tip` フォルダを配置
2. csvファイルを作成し、`data/others/plugin/tip/csv/` に保存（デフォルト名：`tip_data.csv`）
3. `first.ks` にプラグイン呼び出しを記述
   ```
   [plugin name=tip]
   ```
4. TIP化したいテキストを `[tip key=hoge][endtip]` で囲む
   ```
   [tip key=hoge]ほげ[endtip]
   ```
5. TIP一覧表示は `[tip_list]` タグを使用
   ```
   [button x=0 y=0 fix=true role=sleepgame graphic=tiplist.gif target=*tiplist]
   *tiplist
   [tip_list][s]
   ```

---

## 記述例

```
; 全TIPに色指定・マーク付き
[plugin name=tip color=0xffff55 mark=true]
[tip key="hoge"]ほげ[endtip]

; 別のcsvを追加読み込み
[tip_loadcsv file=sample.csv]

; htmlテンプレートを指定
[tip_loadcsv file=sample.csv tip_html=tip_sample.html tiplist_html=tiplist_sample.html]

; 別csvのTIPを表示
[tip key=hoge data_name=sample]

; 別csvのリストを表示
[tip_list data_name=sample]

; フラグを追加
[tip_flag key=hoge flag_name=flag2]

; ページを指定してTIPを開く（2ページ目）
[tip key=hoge page=2]

; 未読マークをボタンに付ける
[button name=tip_btn,tip_data role=sleepgame]
[tip_btn]

; リストをタイトル列で昇順ソート
[tip_list sort_key=title]

; リストをタイトル列で降順ソート
[tip_list sort_key=title sort_reverse=true]
```

TIP詳細から別TIPを開くにはcsvのtip項目にHTML記述：
```html
<span class='tip' data-key='hoge'>ほげ</span>
```

---

## パラメーター一覧

### [plugin] タグ

| パラメータ名 | 値 | 初期値 | 説明 |
|---|---|---|---|
| file | ファイル名 | tip_data.csv | TIPデータファイル名 |
| color | 0x000000形式 | defaultChColor | TIPの色 |
| entercolor | 0x000000形式 | "" | カーソルが乗った時の色 |
| flag | true/false | true | リスト表示をフラグ管理するか |
| flag_var | sf/f | sf | フラグ保存用変数の種類 |
| mark | true/false | false | TIPにマークを付ける |
| log | true/false | true | バックログからもTIP表示させるか |
| log_se | true/false | false | バックログのTIPにSEを入れるか |
| log_color | true/false | false | バックログのTIPにcolorを付けるか |
| tip_html | htmlファイル | tip.html | TIP表示用html |
| tiplist_html | htmlファイル | tip_list.html | TIPリスト表示用html |
| pagefeed | auto/none/数値 | auto | TIPリストをページ分けするか |
| fade_speed | 数値 | 300 | TIP表示のフェード時間 |
| vertical | true/false | config.vertical | 縦書きにするか |
| all_clickse | oggファイル | none | クリック音 |
| all_enterse | oggファイル | none | カーソルが乗った時の音 |
| tip_clickse | oggファイル | none | TIPのクリック音 |
| list_clickse | oggファイル | none | TIPリストのクリック音 |
| close_clickse | oggファイル | none | 閉じるのクリック音 |
| navi_clickse | oggファイル | none | ナビのクリック音 |

### [tip] タグ

| パラメータ名 | 値 | 必須 | 説明 |
|---|---|---|---|
| key | 文字列 | △*1 | csvで定義した「key」 |
| id | 数値 | △*1 | csv表記順 |
| color | 0x000000形式 | × | TIPの色 |
| entercolor | 0x000000形式 | × | カーソルが乗った時の色 |
| mark | true/false | × | TIPにマークを付ける |
| data_name | 文字列 | × | csvデータ名（拡張子なし） |
| page | 文字列/数値 | × | 開くページ |

*1 key または id のどちらかは必須。両方ある場合は key が優先。

### [tip_list] タグ

| パラメータ名 | 値 | 必須 | 説明 |
|---|---|---|---|
| data_name | 文字列 | × | csvデータ名（拡張子なし） |
| sort_key | 文字列 | × | ソートしたい列の見出し |
| sort_reverse | true/false | × | 降順ソートする場合は true |

### [tip_flag] タグ

| パラメータ名 | 値 | 必須 | 初期値 | 説明 |
|---|---|---|---|---|
| key | 文字列 | △*1 | - | csvで定義した「key」 |
| id | 数値 | △*1 | - | csv表記順 |
| data_name | 文字列 | × | - | csvデータ名（拡張子なし） |
| flag_name | 文字列 | × | flag | フラグの名前 |
| flag_val | true/false | × | true | フラグの値 |

### [tip_btn] タグ

| パラメータ名 | 値 | 必須 | 初期値 | 説明 |
|---|---|---|---|---|
| data_name | 文字列 | × | - | csvデータ名（拡張子なし） |
| pos | 文字列 | × | rt | 未読数の表示位置（lt/rt/ct/lb/rb/cb） |

### [tip_flag_reset] タグ

| パラメータ名 | 値 | 必須 | 初期値 | 説明 |
|---|---|---|---|---|
| data_name | 文字列 | × | - | csvデータ名（拡張子なし） |
| tip_btn | true/false | × | false | 未読バッジを使う場合は true |
| clear | true/false | × | false | フラグ値を削除する場合は true |

---

## csvファイル作成の注意

- 文字コードは **UTF-8**
- ファイルは `tip/csv` フォルダ内に保存
- 1行目の見出しは必須（`key` は変更不可、`id`/`flag` は使用不可）
- 改行で1件分
- 項目数は自由に追加可能（`tip.html` にも追記が必要）

```
key,title,tip,tip2
tyrano,ティラノスクリプト,マルチプラットフォーム対応のゲーム作成用スクリプトです。,2ページ目
```

TIP詳細のページ分けはcsvで項目を分け、`tip.html` の `tip_body` の数と対応させる：
```html
<span class="tip_body">{{:tip}}</span>
<span class="tip_body">{{:tip2}}</span>
```

---

## 注意点

- レイヤーの表示順を変更しているため、設定によっては動作しない可能性がある
- 変更禁止のid・class
  - `tip.html` … `#tip_container` `.tip_body`
  - `tip_list.html` … `#tip_list_container` `.tip_list`
- ゲーム公開時は `sample` フォルダを削除すること

---

## 動作確認

ティラノスクリプト v521e

---

## 利用規約

- 改造・再配布自由（有償での再配布は禁止）
- 利用報告・クレジット表記は任意
- ドネーションウェア（カンパウェア）

## 制作者

- name: hororo
- site: めも調 http://hororo.wp.xdomain.jp/
- mail: ruru.amu@gmail.com
- twitter: @hororo_memocho

---

## 更新履歴

| バージョン | 日付 | 内容 |
|---|---|---|
| v4.07c | 2023/02/19 | colorパラメータ不具合修正。log_color追加。v521d/e確認 |
| v4.07b | 2022/11/23 | 右クリックでclose時の不具合修正 |
| v4.07a | 2022/11/14 | 起動時の不具合対応 |
| v4.07 | 2022/11/13 | v520でロード時に動作しない不具合対応 |
| v4.06 | 2022/04/29 | [tip_flag_reset]タグ追加 |
| v4.05 | 2021/09/30 | [tip_show]タグ・idパラメータ追加。テンプレートでゲーム変数を使用可能に |
| v4.04 | 2021/08/05 | TIPリストにソート機能追加 |
| v4.03 | 2021/02/11 | ボタン用未読数の位置指定パラメータ追加 |
| v4.02 | 2021/01/03 | 未読マーク追加 |
| v4.00 | 2020/09/21 | CSV複数読み込み、テンプレート指定等機能追加 |
| v3.04 | 2018/09/30 | 縦書き対応 |
| v3.00 | 2017/12/23 | jsRender対応、各種機能追加 |
| v1.00 | 2016/04/14 | 公開 |
