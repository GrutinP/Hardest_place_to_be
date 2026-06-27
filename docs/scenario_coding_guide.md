← [README](README.md)

# シナリオ実装コードリファレンス

このプロジェクト固有のコードスニペット集。汎用的なTyranoScript構文はここに書かない。

---

## 話者名

```ks
#&f.p_name   ; プレイヤー名（01_avanで入力した名前）
#&f.c_name   ; ヒロイン名（魚座なら"アジサイ"、それ以外は"＊"＝名前非表示）
```

`f.c_name` は魚座分岐で切り替わる。セリフ前は必ず `#ajisai_n` ではなくこの変数を使うこと。

---

## キャラクター

```ks
; 表示
[show_ajisai_n time="500"]
[show_ajisai_w time="500"]

; 非表示
[chara_hide name="ajisai_n" layer="3" time="500"]
[chara_hide name="ajisai_w" layer="3" time="500"]

; パーツ変更（表情など）
[chara_part name="ajisai_n" eyebrow="komari" eye="odoroki" mouth="o"]
```

パーツIDの一覧 → [chara_usage.md](chara_usage.md)

シーン冒頭では全パーツを明示してからshowする：

```ks
[chara_part name="ajisai_n" umbrella="green" base="normal" eyebrow="normal" eye="normal" mouth="normal" effect="none" bad01="0" bad02="0" bad03="0"]
[show_ajisai_n time="500"]
```

---

## 黒帯（シネマスコープ）

```ks
[show_letterbox]   ; 上下から黒帯が出る
[hide_letterbox]   ; 黒帯を引っ込める
```

---

## 歩き背景

```ks
[start_walk_bg]                        ; スクロール開始
[stop_xanim name="walk_bg_loop"]       ; その場で静止（layerは残す）
[stop_walk_bg storage="bg_ame_michi.jpg" time="500"]  ; 停止して静止背景に切替
```

スクロール方向の反転条件（魚座分岐）→ [scenario_structure.md](scenario_structure.md)

---

## 雨エフェクト

```ks
[show_rain]           ; 表示
[show_rain time="1000"]デフォルトは500
[hide_rain]           ; 消す
[hide_rain time="1000"]デフォルトは500
```

雨の方向制御（`f.rain_deg`）→ [scenario_structure.md](scenario_structure.md)

---

## 演出まとめ消し

```ks
[clear_walk_effects]  ; 歩き背景・黒帯・雨・キャラ（layer0〜3）を一括消去
```
