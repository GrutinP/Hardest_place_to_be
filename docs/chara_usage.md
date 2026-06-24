# アジサイ キャラ指定メモ

> 00_init.ks で定義済みのキャラ・パーツ一覧と、シナリオで使う書き方のリファレンス。

---

## キャラ名

| 変数名 | 立ち絵 |
|--------|--------|
| `ajisai_n` | 通常立ち絵（全身） |
| `ajisai_w` | 歩き立ち絵（顔アップ） |

---

## 登場・退場

```
; 登場（位置・時間指定）
[chara_show name="ajisai_n" left="700" top="0" time="300"]

; 退場
[chara_hide name="ajisai_n" time="300"]

; 全キャラ退場
[chara_hide_all time="300"]
```

---

## パーツ切り替え — [chara_part]

**基本形：**
```
[chara_part name="ajisai_n" パーツ名="id"]
```

複数同時切り替え可：
```
[chara_part name="ajisai_n" eyebrow="komari" eye="odoroki" mouth="o"]
```

時間指定（フェード）：
```
[chara_part name="ajisai_n" eyebrow="okori" time="200"]
```

---

## パーツID一覧

### umbrella（傘） ※ ajisai_n のみ

| id | 内容 |
|----|------|
| `none` | 傘なし（透明） |
| `green` | 緑の傘 |
| `red` | 赤の折り畳み傘 |

```
[chara_part name="ajisai_n" umbrella="green"]
```

### base（本体）

| id | 内容 |
|----|------|
| `normal` | 通常 |

### eyebrow（眉）

| id | 内容 |
|----|------|
| `normal` | 通常 |
| `komari` | 困り |
| `okori` | 怒り |

### eye（目）

| id | 内容 |
|----|------|
| `normal` | 通常 |
| `odoroki` | 驚き |
| `toji` | 目閉じ |
| `jito` | ジト目 |
| `toji_emi` | 目閉じ笑み |

### mouth（口）

| id | 内容 |
|----|------|
| `normal` | 通常 |
| `o` | O |
| `emi` | 笑み |
| `i` | イー |
| `x` | ｘ |
| `he` | へ |
| `urotatae` | うろたえ |
| `v` | ▽ |
| `mukure` | むくれ |

### effect（エフェクト）

| id | 内容 |
|----|------|
| `none` | なし（透明） |
| `akagao_weak` | 赤面（弱） |
| `akagao_strong` | 赤面（強） |
| `ase` | 汗 |

---

## 汚れパーツ（変数連動）

| パーツ | 変数 | on条件 |
|--------|------|--------|
| `bad01` | `f.if_chara_splashed` | ③Aルート選択後 |
| `bad02` | `f.if_chara_stomped` | ⑥Aルート選択後 |
| `bad03` | `f.if_chara_stucked` | ⑧以降 |

### 書き方（id が 0/1 = 変数値がそのままid）

```
[chara_part name="ajisai_n" bad01="&f.if_chara_splashed"]
[chara_part name="ajisai_n" bad02="&f.if_chara_stomped"]
[chara_part name="ajisai_n" bad03="&f.if_chara_stucked"]
```

全汚れをまとめて反映：
```
[chara_part name="ajisai_n" bad01="&f.if_chara_splashed" bad02="&f.if_chara_stomped" bad03="&f.if_chara_stucked"]
```

> ajisai_w にも同じ bad01/02/03 定義あり。歩きシーンで汚れを反映するときも同じ構文。

---

## キャラ移動 — [chara_move]

```
[chara_move name="ajisai_n" left="900" top="0" time="1000" wait="true"]
```

---

## よく使う表情セット例

```
; 普通
[chara_part name="ajisai_n" eyebrow="normal" eye="normal" mouth="normal" effect="none"]

; 驚き
[chara_part name="ajisai_n" eyebrow="normal" eye="odoroki" mouth="o"]

; 怒り
[chara_part name="ajisai_n" eyebrow="okori" eye="jito" mouth="x"]

; 困り顔
[chara_part name="ajisai_n" eyebrow="komari" eye="normal" mouth="he"]

; 笑顔
[chara_part name="ajisai_n" eyebrow="normal" eye="toji_emi" mouth="emi"]

; 赤面（弱）
[chara_part name="ajisai_n" eyebrow="komari" eye="normal" mouth="mukure" effect="akagao_weak"]
```
