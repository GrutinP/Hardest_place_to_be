【タップエフェクトプラグイン】

■使い方
このテキストが入っているフォルダごと「data/others/plugin」フォルダに置きます。
その後、first.ksとかに以下のように記述してください。

[plugin name=tap_effect]

記述した時点から後述のタグを使用可能になります。
また、セーブデータロード時の処理のため、make.ksに以下のように記述してください。

[tap_effect_restore]


■できること
・タップ/クリック地点にエフェクトを表示



■タグと指定可能属性
tap_effect_set      ：タップエフェクト定義
属性：
type            ：エフェクトの表示種類、「ripple」または「particle」を指定
figure          ：図形の種類を指定、「circle」（円）、「rect」（矩形）、「triangle」（三角形）、「pentagon」（五角形）、「hexagon」（六角形）、「star」（五芒星）、「twinkle」（四芒星）のいずれか
ratio           ：図形の縦横比を「横/縦」の形式で指定（例：矩形の場合、正方形なら「1/1」、縦長の長方形なら「1/2」など）
bg_none         ：図形の塗りつぶしをなしにする場合はtrueを指定
bg_color        ：図形の塗りつぶし色を指定
border_none     ：図形の枠線をなしにする場合はtrueを指定
border_color    ：図形の枠線色を指定
border_width    ：図形の枠線幅を指定（単位：px）
pos_start       ：タップアニメーション開始時の図形位置、クリック地点からの距離を指定（単位：px）
pos_end         ：タップアニメーション終了時の図形位置、クリック地点からの距離を指定（単位：px）
count_min       ：type=particleの場合、一度に表示する図形の最小個数を指定
count_max       ：type=particleの場合、一度に表示する図形の最大個数を指定
size_min        ：type=particleの場合、表示する図形の最小サイズを指定
size_max        ：type=particleの場合、表示する図形の最大サイズ個数を指定
duration        ：アニメーションにかける時間を指定（単位：ミリ秒）
start_delay     ：タップ/クリックしてからアニメーション開始するまでの時間を指定（単位：ミリ秒）
delete_delay    ：アニメーション終了してから図形を消去開始するまでの時間を指定、負の値を指定するとアニメーション終了前から消去開始（単位：ミリ秒）
delete_time     ：図形の消去アニメーションの時間を指定（単位：ミリ秒）
delete_type     ：図形の消去タイプを指定、「fade」（フェードアウト）、「minimize」（最小化）のいずれか

tap_effect_start    ：タップエフェクト開始
属性：
なし

tap_effect_stop     ：タップエフェクト終了
属性：
なし

button_ex_restore   ：make.ks記述用（必ず「make.ks」にこのタグを記述してください）
属性：
なし


■使い方
[tap_effect_set type="ripple" figure="circle" ratio="9/9" border_color="white" border_width="1" bg_none="true" bg_color="red" pos_start="50" pos_end="150" duration="1000" delete_delay="-50" delete_time="200" delete_type="fade"]
[tap_effect_set type="ripple" figure="circle" ratio="9/9" border_color="yellow" border_width="1" bg_none="true" bg_color="red" pos_start="10" pos_end="50" duration="1000" delete_delay="0" delete_time="200" delete_type="fade"]
[tap_effect_set type="particle" figure="rect" ratio="2/1" border_color="transparent" border_width="0" bg_none="false" bg_color="red" pos_start="50" pos_end="100" count_min=5 count_max=10 size_min=10 size_max=20 duration="300" delete_delay="-50" delete_time="200" delete_type="minimize"]

複数の図形を組み合わせてひとつのエフェクトにできます。


■typeについて
・rippleは、タップ地点を中心としてひとつの図形が表示されます。
・particleは、タップ地点を中心として複数の図形が散らばって表示されます。


■アニメーション時間について
アニメーション全体にかかる時間は、タップした時点を基準として
「start_delay + duration + delete_delay + delete_time」
となります。

delete_delayに負の値を指定すると、duration中に消去開始されます。
例）
「duration=100」「delete_delay=-30」の場合、durationが70ミリ秒に到達した時点で図形の消去が開始される


■注意事項
ティラノスクリプトv5以降で動作確認しています。
このプラグインを使用したことで生じたあらゆる問題について、製作者は責任を負いません。


■製作者
さくた（@skt_tyrano）
https://skskpnt.app


■更新履歴
2024/11/08  v1.0.2公開
・同じ[tap_effect_set]タグを複数回通過した場合、エフェクトが重複する不具合を修正

2024/04/30  v1.0.1公開
・拡張UIパーツプラグインと併用した際に拡張UIパーツプラグインのスライダーが操作できなくなる不具合を修正

2023/02/29  v1.0.0公開
・正式公開