;背景スクロールテスト
[keyframe name="walk_bg_scroll"]
[frame p="0%" x="0"]
[frame p="100%" x="-2560"]
[endkeyframe]
[image layer="0" page="fore" name="walk_bg_loop" storage="bg_ame_michi_loop.jpg" folder="bgimage" x="0" y="0" width="5120" height="720" visible="true" time="300"]
[xanim name="walk_bg_loop" keyframe="walk_bg_scroll" time="16000" easing="linear" count="infinite" wait="false"]
[layopt layer="message0" visible="false"]
;背景スクロールテスト、ここまで

[iscript]
// count:本数
// minLen:最短長さ
// maxLen:最長長さ
// minDur:最短時間
// maxDur:最長時間
var configs ={
    light: {
        count:   50,
        minLen:  8,
        maxLen:  14,
        minDur:  0.8,
        maxDur:  1.4,
        angle:   0.0
    },
    normal: {
        count:   100,
        minLen:  12,
        maxLen:  20,
        minDur:  0.5,
        maxDur:  1.0,
        angle:   0.0
    },
     heavy: {
        count:   200,
        minLen:  20,
        maxLen:  40,
        minDur:  0.3,
        maxDur:  0.6,
        angle:   0.0
    }
};

// CSSを文字列として組み立てる（バッククォートはティラノと相性が悪いので + でつなぐ）
var css = '';
css += '@keyframes fall {';
css += '  from { transform: translateY(-50px); }';
css += '  to   { transform: translateY(800px); }';
css += '}';
css += '.my-rain-container {';
css += '  position:absolute;top:0;left:0;';
css += '  width:100%;height:100%;';
css += '  pointer-events:none;';
css += '  z-index:5000;';
css += '  transform:rotate(-5deg);';
css += '}';
css += '.my-rain {';
css += '  position: absolute;';
css += '  top: 0;';
css += '  width: 2px;';
css += '  background: linear-gradient(to bottom, transparent, rgba(180,210,255,0.6));';
css += '  animation: fall 1s linear infinite;';
css += '}';

// <style>タグを作ってheadに追加する
var styleEl = document.createElement('style');
styleEl.textContent = css;
document.head.appendChild(styleEl);
[endscript]

[iscript]
// ティラノスクリプトのゲーム画面要素を取得する　何かこう書くらしい
var base = document.getElementById('tyrano_base');

// コンテナを作る　これはそのまま。あとZインデックスを調整しないと背景やメッセージウィンドウの間に入ってくれない
var container = document.createElement('div');
container.className = 'my-rain-container';
base.appendChild(container);

// 雨粒を100本作る　100本…もいるか……？
for (var i = 0; i < 100; i++) {
  var drop = document.createElement('div');
  drop.className = 'my-rain';
  drop.style.left              = (Math.random() * 1280) + 'px';
  drop.style.height            = (10 + Math.random() * 30) + 'px';
  drop.style.animationDelay    = -(Math.random()) + 's';
  drop.style.animationDuration = (0.4 + Math.random() * 0.5) + 's';
  container.appendChild(drop);
}
[endscript]

[return]
