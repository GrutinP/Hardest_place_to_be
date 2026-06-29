
// メニュー画面にコンフィグへの遷移ボタンと画面サイズ切り替えボタンを設置
// スクリプト参照元「りまねの縦書き小説」さま（https://rimane-novels.net/）
/*
var myobj = {

  // コンフィグ画面遷移用のオブジェクト
  config: function() {
    if (tyrano.plugin.kag.tmp.sleep_game != null) {
      return false;
    }
    TYRANO.kag.ftag.startTag("sleepgame", {
      storage: "../others/plugin/theme_kopanda_19/config.ks",
      next: false
    });
    setTimeout(function() {
      $('.layer.layer_menu').css({
        'display': 'none'
      });
    }, 350);
  },
};
*/

var myobj = {

  // コンフィグ画面遷移用のオブジェクト
  config: function() {
    if (tyrano.plugin.kag.tmp.sleep_game != null) {
      return false;
    }
    TYRANO.kag.ftag.startTag("sleepgame", {
      storage: "../others/plugin/theme_kopanda_19/config.ks",
      next: false
    });
    $('.layer.layer_menu').fadeOut(400, function() {
    });
  },
};
