
[cm]
[clearstack]
[bg storage="title.jpg" time="100"]
[wait time="200"]

[tap_effect_set type="ripple" figure="circle" ratio="9/9" border_color="white" border_width="1" bg_none="true" bg_color="red" pos_start="50" pos_end="150" duration="1000" delete_delay="-50" delete_time="200" delete_type="fade"]

[tap_effect_start]

[show_rain]

*start

[layopt layer="message0" visible="false"]

[glink text="はじめから" size="36" color="white" x="400" y="280" width="480" target="*gamestart"]
[glink text="つづきから" size="36" color="white" x="400" y="380" width="480" target="*loadgame"]
[glink text="コンフィグ" size="36" color="white" x="400" y="480" width="480" target="*config"]
[s]

*gamestart
[hide_rain]
[jump storage="scene/00_init.ks"]

*loadgame
[iscript]
TYRANO.kag.saveLoad("load");
[endscript]

[s]

*config
[sleepgame storage="../others/plugin/theme_kopanda_20/config.ks"]
[jump target="*start"]
