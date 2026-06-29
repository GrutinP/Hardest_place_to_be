;=============================================================
; 02_opening.ks  オープニング：テレビの星座占いコーナー
; ← 01_avan.ks
;=============================================================

; メッセージウィンドウをクリア（前シーンのテキストが残らないように）
[cm]

; テレビ画面に切り替え（黒から明転、0.5秒）
[playse storage="se_tv_on.wav"]
[bg storage="bg_tv.jpg" time="500"]

; テレビ番組の雰囲気BGM（ループ再生）
[playbgm storage="bgm_tv.wav" loop="true"]

/*
; ---- 10番目のアナウンス（ダミーテキスト。ボイス収録時の前フリ用） ----
; ※ゲームとして使う場合はこのブロックを有効化する
#tv
10番目は蠍座のあなた[p]
勘違いで行動してしまい 深く後悔することも[p]
でもそれ誤解かもしれないから 素直に相手に気持ちを伝えてみると良いでしょう[p]
*/


[popopo type="none"]

#アナウンサー

; ---- 11番目のアナウンス ----
; プレイヤーが選んだ星座（f.p_sign）に応じてセリフとボイスを切り替える
; ボイスは星座ごとに収録が必要なため分岐、クリック待ち[p]は分岐の外に置く
[if exp="f.p_sign==1"]
	;[playse storage="TODO_voice_anc_psign_01.ogg"]
	……でしょう [r]続いて11番目は 『おひつじ座』のあなた
[elsif exp="f.p_sign==2"]
	;[playse storage="TODO_voice_anc_psign_02.ogg"]
	……でしょう [r]続いて11番目は 『おうし座』のあなた
[elsif exp="f.p_sign==3"]
	;[playse storage="TODO_voice_anc_psign_03.ogg"]
	……でしょう [r]続いて11番目は 『ふたご座』のあなた
[elsif exp="f.p_sign==4"]
	;[playse storage="TODO_voice_anc_psign_04.ogg"]
	……でしょう [r]続いて11番目は 『かに座』のあなた
[elsif exp="f.p_sign==5"]
	;[playse storage="TODO_voice_anc_psign_05.ogg"]
	……でしょう [r]続いて11番目は 『しし座』のあなた
[elsif exp="f.p_sign==6"]
	;[playse storage="TODO_voice_anc_psign_06.ogg"]
	……でしょう [r]続いて11番目は 『おとめ座』のあなた
[elsif exp="f.p_sign==7"]
	;[playse storage="TODO_voice_anc_psign_07.ogg"]
	……でしょう [r]続いて11番目は 『てんびん座』のあなた
[elsif exp="f.p_sign==8"]
	;[playse storage="TODO_voice_anc_psign_08.ogg"]
	……でしょう [r]続いて11番目は 『さそり座』のあなた
[elsif exp="f.p_sign==9"]
	;[playse storage="TODO_voice_anc_psign_09.ogg"]
	……でしょう [r]続いて11番目は 『いて座』のあなた
[elsif exp="f.p_sign==10"]
	;[playse storage="TODO_voice_anc_psign_10.ogg"]
	……でしょう [r]続いて11番目は 『やぎ座』のあなた
[elsif exp="f.p_sign==11"]
	;[playse storage="TODO_voice_anc_psign_11.ogg"]
	……でしょう [r]続いて11番目は 『みずがめ座』のあなた
[elsif exp="f.p_sign==12"]
	;[playse storage="TODO_voice_anc_psign_12.ogg"]
	……でしょう [r]続いて11番目は 『うお座』のあなた
[endif]
; ↑分岐ここまで。クリック待ちを外に置くことで全星座共通のタイミング制御になる
[p]

; 11番目の予言内容（全星座共通）
車に水を引っかけられて 犬に顔を踏まれて [r]
傘が壊れるでしょう[p]

でも 素敵な出会いが あるかもしれません[p]

; ---- 最下位のアナウンス ----
; アジサイの星座（f.c_sign）に応じてセリフとボイスを切り替える
; c_signは6（おとめ座）か12（うお座）の2択のみ（01_avanで確定）
[if exp="f.c_sign==12"]
	;[playse storage="TODO_voice_anc_csign_12.ogg"]
	そして 最下位は 『うお座』のあなた
[elsif exp="f.c_sign==6"]
	;[playse storage="TODO_voice_anc_csign_06.ogg"]
	そして 最下位は 『おとめ座』のあなた
[endif]
[p]

; 最下位の内容（共通）
マジで外 出ない方がいいよ[p]

それでも 学校や仕事があるでしょうから[p]

; ラッキーアイテムの「赤い傘」を強調色で表示
そんなあなたのラッキーアイテムは [r][font color="red"]赤い傘[resetfont ]です[p]

…………え 無い？ [r]
…………知らないよ そんなの[p]

今日 大雨だし 新しいの買えばいんじゃねーの[p]

なんでもかんでもウチに頼ろうとすンな！ [r]
この デジタル世代のデジタルタルソースが！[p]

; テレビを消す演出（SE→黒→暗転）
[cm]
[playse storage="se_tv_off_.wav"]
[bg storage="black.jpg" time="500"]
[fadeoutbgm time="1000"]
; 暗転が落ち着くまで少し待ってから次シーンへ
[wait time="300"]

; 03_prologue（出会いシーン）へ
[jump storage="scene/03_prologue.ks"]

[s]
