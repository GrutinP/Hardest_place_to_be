# 背景スクロール・黒帯 参考ガイド

雨の JS 実験は含めない。ここでは TyranoScript 標準タグだけで作った、横スクロール背景と黒帯の参考実装を残す。

## 呼び出し

使うシーンの先頭で一度だけ呼ぶ。

```ks
[call storage="scene/effect_system.ks"]
```

## 横スクロール背景

開始:

```ks
[start_walk_bg]
```

任意指定:

```ks
[start_walk_bg storage="bg_ame_michi_loop.jpg" speed="16000" fadein="300"]
```

- `storage`: 横長ループ背景
- `speed`: 1ループの時間。小さいほど速い
- `fadein`: 表示時のフェード時間

停止して静止背景へ差し替え:

```ks
[stop_walk_bg storage="bg_ame_michi.jpg" time="500"]
```

`[keyframe]` と `[xanim count="infinite" wait="false"]` を使う。無限ループでもシナリオを止めないため、歩行背景向き。

## 黒帯

表示:

```ks
[show_letterbox]
```

解除:

```ks
[hide_letterbox]
```

上帯は 88px、下帯は 200px。下を厚めにして、画面中央より上へ視線を寄せる。

`[image]` で `black.jpg` を上下に置き、`[anim]` で画面外から入れる。バウンドは入れず、`easeOutCubic` / `easeInCubic` で短く動かす。

## まとめ消し

```ks
[clear_walk_effects]
```

背景アニメを止め、前景レイヤー 0/1/2 を削除する。

## テスト画面

```ks
[jump storage="scene/test_rain.ks"]
```

ファイル名は以前の名残で `test_rain.ks` のまま。中身は背景スクロールと黒帯だけ。
