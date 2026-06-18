
[cm]
[clearstack]
[bg storage="title.jpg" time="100"]
[wait time="200"]

*start

[layopt layer="message0" visible="false"]

[glink text="はじめから" size="36" color="white" x="400" y="280" width="480" target="*gamestart"]
[glink text="つづきから" size="36" color="white" x="400" y="380" width="480" target="*loadgame"]

[s]

*gamestart
[jump storage="scene/00_init.ks"]

*loadgame
[iscript]
TYRANO.kag.saveLoad("load");
[endscript]
[s]
