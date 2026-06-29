;=============================================================
; macro.ks  プロジェクト共通マクロ定義
; first.ks で [call] して読み込む
;
; 提供マクロ:
;   演出系:
;     [start_walk_bg]                    横スクロール背景開始
;     [erase_walk_bg]                    横スクロール背景をその場で静止（freeはしない）
;     [show_letterbox]                   黒帯表示（シネマスコープ）
;     [hide_letterbox]                   黒帯非表示
;     [clear_walk_effects]               演出レイヤー全消し
;     [show_rain time=""]                雨エフェクト表示（layer1）
;     [hide_rain time=""]                雨エフェクト消去（layer1）
;   キャラ:
;     [show_ajisai_n time=""]            ajisai_n を layer3 に表示
;     [show_ajisai_w time=""]            ajisai_w を layer3 に表示
;
; レイヤー構成:
;   base  背景（[bg]）
;   0     歩き背景スクロール
;   1     雨エフェクト
;   2     黒帯
;   3     キャラ
;=============================================================

; ------------------------------------------------------------
; 横スクロール背景（layer0）
; ------------------------------------------------------------

[macro name="start_walk_bg"]
    ; 通常（非魚座）: 背景が左にスクロール。キャラが右方向に歩いているように見える
    ; x: 0 → -2560（画像左端から開始、左へ2560px移動してループ）
    [keyframe name="walk_bg_scroll"]
    [frame p="0%" x="0"]
    [frame p="100%" x="-2560"]
    [endkeyframe]
    ; 魚座: 背景が右にスクロール。キャラが左方向に歩いているように見える
    ; x: -3840 → -1280（画像右端を画面右端に合わせて開始、右へ2560px移動してループ）
    ; -3840 = -(画像幅5120 - 画面幅1280)
    [keyframe name="walk_bg_scroll_rev"]
    [frame p="0%" x="-3840"]
    [frame p="100%" x="-1280"]
    [endkeyframe]
    ; 魚座かどうかで画像の初期x位置を切り替え
    [eval exp="tf.walk_startx = (f.walk_keyframe == 'walk_bg_scroll_rev') ? -3840 : 0"]
    [image layer="0" page="fore" name="walk_bg_loop" storage="%image|bg_ame_michi_loop.jpg" folder="bgimage" x="&tf.walk_startx" y="0" width="5120" height="720" visible="true" time="%time|1000"]
    [xanim name="walk_bg_loop" keyframe="&f.walk_keyframe" time="%anim_time|16000" easing="linear" count="infinite" wait="false"]
[endmacro]

/*
[macro name="stop_walk_bg"]
    [bg storage="%storage|bg_ame_michi.jpg" time="0"]
    [anim name="walk_bg_loop" opacity="0" time="%time|500" effect="easeOutSine"]
    [wait time="%time|500"]
    [stop_xanim name="walk_bg_loop"]
    [freeimage layer="0" page="fore"]
[endmacro]
*/

[macro name="erase_walk_bg"]
    [if exp="f.c_sign == 12"]
        [free layer="0" name="walk_bg_scroll" time="%time|500"]
    [else]
        [free layer="0" name="walk_bg_scroll_rev" time="%time|500"]
    [endif]
[endmacro]

; ------------------------------------------------------------
; 黒帯（layer2）
; ------------------------------------------------------------

[macro name="show_letterbox"]
    [freeimage layer="2" page="fore"]
    [image layer="2" page="fore" name="letterbox_top"    storage="black.jpg" folder="bgimage" left="0" top="-88"  width="1280" height="88"  visible="true" zindex="9500"]
    [image layer="2" page="fore" name="letterbox_bottom" storage="black.jpg" folder="bgimage" left="0" top="720"  width="1280" height="200" visible="true" zindex="9501"]
    [anim name="letterbox_top"    top="0"   time="%time|420" effect="easeOutCubic"]
    [anim name="letterbox_bottom" top="520" time="%time|420" effect="easeOutCubic"]
[endmacro]

[macro name="hide_letterbox"]
    [image layer="2" page="fore" name="letterbox_top"    storage="black.jpg" folder="bgimage" left="0" top="0"   width="1280" height="88"  visible="true" zindex="9500"]
    [image layer="2" page="fore" name="letterbox_bottom" storage="black.jpg" folder="bgimage" left="0" top="520" width="1280" height="200" visible="true" zindex="9501"]
    [anim name="letterbox_top"    top="-88" time="%time|360" effect="easeInCubic"]
    [anim name="letterbox_bottom" top="720" time="%time|360" effect="easeInCubic"]
    [wait time="%time|360"]
    [freeimage layer="2" page="fore"]
[endmacro]

; ------------------------------------------------------------
; まとめ消し
; ------------------------------------------------------------

[macro name="clear_walk_effects"]
    [stop_xanim name="walk_bg_loop"]
    [freeimage layer="0" page="fore"]
    [freeimage layer="2" page="fore"]
    [freeimage layer="1" page="fore"]
    [freeimage layer="3" page="fore"]
[endmacro]

; ------------------------------------------------------------
; 雨エフェクト（layer1）
; ------------------------------------------------------------

[macro name="show_rain"]
    [backlay]
    [ptext layer="1" page="back" x="0" y="0" overwrite="true" text='<div class="my-rain-container"><div class="my-rain" style="left:776.1918430606991px;height : 25.898429986370544px;animation-delay:-0.6679925031860703s;animation-duration:0.6586487161251338s;"></div><div class="my-rain" style="left:1252.208694832169px;height : 32.4704162790485px;animation-delay:-0.6498557473224357s;animation-duration:0.8814760199202759s;"></div><div class="my-rain" style="left:101.23996967242007px;height : 32.27425142027429px;animation-delay:-0.7247910426370293s;animation-duration:0.665569235314727s;"></div><div class="my-rain" style="left:505.5662687496671px;height : 36.64419813668394px;animation-delay:-0.49887740636683486s;animation-duration:0.846521980754386s;"></div><div class="my-rain" style="left:151.78760978222058px;height : 28.15309179871508px;animation-delay:-0.9039019955792325s;animation-duration:0.566389765058862s;"></div><div class="my-rain" style="left:948.2320307325374px;height : 33.57185401930698px;animation-delay:-0.7139188408611685s;animation-duration:0.40115552813217376s;"></div><div class="my-rain" style="left:1134.9849520132884px;height : 11.770722995464116px;animation-delay:-0.5088074850277614s;animation-duration:0.6868745847918576s;"></div><div class="my-rain" style="left:1257.0490948324136px;height : 17.3339290459059px;animation-delay:-0.7108063172577763s;animation-duration:0.7551618609288452s;"></div><div class="my-rain" style="left:855.1325588141663px;height : 36.34203792924738px;animation-delay:-0.5237875512343075s;animation-duration:0.7242673875735945s;"></div><div class="my-rain" style="left:84.800998584371px;height : 39.6351205271896px;animation-delay:-0.5972695700011229s;animation-duration:0.49220131741114165s;"></div><div class="my-rain" style="left:1221.2674534780163px;height : 15.165335416825627px;animation-delay:-0.17380845019233881s;animation-duration:0.8419690897040835s;"></div><div class="my-rain" style="left:1264.3325378400345px;height : 22.588392530900943px;animation-delay:-0.9645702207345018s;animation-duration:0.8102500852984726s;"></div><div class="my-rain" style="left:910.3211385320033px;height : 23.774164018356842px;animation-delay:-0.9536698816262421s;animation-duration:0.6421942954683376s;"></div><div class="my-rain" style="left:48.53416809809332px;height : 13.162709064092184px;animation-delay:-0.009037929153874913s;animation-duration:0.453681954350773s;"></div><div class="my-rain" style="left:314.70545486308254px;height : 17.23333799066505px;animation-delay:-0.964372042756562s;animation-duration:0.8798991539414724s;"></div><div class="my-rain" style="left:85.53650984709876px;height : 21.086845650304927px;animation-delay:-0.7465911291770787s;animation-duration:0.7185984631222808s;"></div><div class="my-rain" style="left:691.8111562032873px;height : 36.802853308073004px;animation-delay:-0.7260832039361632s;animation-duration:0.6236904123262761s;"></div><div class="my-rain" style="left:688.7591845294885px;height : 15.2328490636779px;animation-delay:-0.9684032392627286s;animation-duration:0.4925311249722051s;"></div><div class="my-rain" style="left:1120.5203587463184px;height : 30.000864348219732px;animation-delay:-0.4442937849912033s;animation-duration:0.5258561328638001s;"></div><div class="my-rain" style="left:379.268876297101px;height : 23.440910923949307px;animation-delay:-0.3743472364781103s;animation-duration:0.8235997096975236s;"></div><div class="my-rain" style="left:1154.7754394086498px;height : 16.02368766626708px;animation-delay:-0.9870678562472277s;animation-duration:0.46421933521748254s;"></div><div class="my-rain" style="left:440.79036937905653px;height : 31.274625675371215px;animation-delay:-0.9568652321134434s;animation-duration:0.4537487333306703s;"></div><div class="my-rain" style="left:328.14920250897984px;height : 20.706409931865913px;animation-delay:-0.7004762416901307s;animation-duration:0.40414495411092355s;"></div><div class="my-rain" style="left:46.23172420491315px;height : 37.499699133438384px;animation-delay:-0.010180021024945973s;animation-duration:0.4670117172103563s;"></div><div class="my-rain" style="left:892.8830843433956px;height : 29.89963179759677px;animation-delay:-0.7060972128402202s;animation-duration:0.6726764975455846s;"></div><div class="my-rain" style="left:1244.3961964721448px;height : 37.09895298478163px;animation-delay:-0.21791944330449153s;animation-duration:0.5051232915263534s;"></div><div class="my-rain" style="left:657.6862320313484px;height : 15.032786504358027px;animation-delay:-0.03746358756729806s;animation-duration:0.4402437993270426s;"></div><div class="my-rain" style="left:560.4812164347991px;height : 38.306040757263844px;animation-delay:-0.8464533953274841s;animation-duration:0.46350426228652597s;"></div><div class="my-rain" style="left:873.4859509033514px;height : 13.537199124725245px;animation-delay:-0.9256799805671613s;animation-duration:0.6971802811682128s;"></div><div class="my-rain" style="left:725.0053941044688px;height : 26.922727792113612px;animation-delay:-0.40197128690152817s;animation-duration:0.8943610973514693s;"></div><div class="my-rain" style="left:350.71812626259145px;height : 33.733864461622844px;animation-delay:-0.6738013289063693s;animation-duration:0.7245152597810137s;"></div><div class="my-rain" style="left:1082.0926861034097px;height : 17.681035483906133px;animation-delay:-0.2468375740795692s;animation-duration:0.5664915774316088s;"></div><div class="my-rain" style="left:501.7157687032119px;height : 14.150521207716135px;animation-delay:-0.3266690164720467s;animation-duration:0.6639120409347051s;"></div><div class="my-rain" style="left:968.8550270921614px;height : 34.007023962389816px;animation-delay:-0.64854286369539s;animation-duration:0.7610224053747918s;"></div><div class="my-rain" style="left:868.4345170139904px;height : 38.69438290575317px;animation-delay:-0.07467744683260857s;animation-duration:0.5567743993306833s;"></div><div class="my-rain" style="left:888.4482070995871px;height : 32.4845732545552px;animation-delay:-0.9219891586869939s;animation-duration:0.7908230895038404s;"></div><div class="my-rain" style="left:749.7532331281407px;height : 30.20954863889727px;animation-delay:-0.6156788504082094s;animation-duration:0.6821117409691622s;"></div><div class="my-rain" style="left:611.8157336700406px;height : 27.92777531113154px;animation-delay:-0.649248894496409s;animation-duration:0.7258133319535184s;"></div><div class="my-rain" style="left:846.1517075422944px;height : 33.35387504597689px;animation-delay:-0.20511640348521865s;animation-duration:0.8722627001875402s;"></div><div class="my-rain" style="left:151.93857004797067px;height : 21.7627052132798px;animation-delay:-0.613992967202667s;animation-duration:0.4129428604431586s;"></div><div class="my-rain" style="left:1128.033671429967px;height : 16.262975603348398px;animation-delay:-0.1619703943712275s;animation-duration:0.6140778585666345s;"></div><div class="my-rain" style="left:64.55964498950877px;height : 21.86421449558906px;animation-delay:-0.6610096174487127s;animation-duration:0.5823720243793564s;"></div><div class="my-rain" style="left:736.0067528228757px;height : 10.520348765263211px;animation-delay:-0.4136810266464198s;animation-duration:0.69806989072497s;"></div><div class="my-rain" style="left:550.8191295443789px;height : 33.74277460001533px;animation-delay:-0.18549821475692452s;animation-duration:0.7508722074949644s;"></div><div class="my-rain" style="left:991.9431720964935px;height : 27.865666950628366px;animation-delay:-0.7694823731929805s;animation-duration:0.7128877029937515s;"></div><div class="my-rain" style="left:103.67504508626936px;height : 16.08004300689155px;animation-delay:-0.34398608133972164s;animation-duration:0.4212539072643292s;"></div><div class="my-rain" style="left:199.77301888671903px;height : 32.17978044962018px;animation-delay:-0.8789789954691656s;animation-duration:0.8561061994821164s;"></div><div class="my-rain" style="left:186.38604836774846px;height : 34.996931202270105px;animation-delay:-0.11295024246820684s;animation-duration:0.457952696006112s;"></div><div class="my-rain" style="left:810.3615723892992px;height : 37.764683993358574px;animation-delay:-0.23341286898965385s;animation-duration:0.7256777133979644s;"></div><div class="my-rain" style="left:850.3246861290122px;height : 13.615743710807703px;animation-delay:-0.2729193349728305s;animation-duration:0.4221866153541844s;"></div><div class="my-rain" style="left:867.597985288951px;height : 26.583447284919796px;animation-delay:-0.4785702678099223s;animation-duration:0.8994530646010577s;"></div><div class="my-rain" style="left:787.0596161376772px;height : 14.075754329801384px;animation-delay:-0.002448977549570297s;animation-duration:0.8785056653430574s;"></div><div class="my-rain" style="left:678.3971325686257px;height : 32.08296196665648px;animation-delay:-0.20497536667580285s;animation-duration:0.5872207913791592s;"></div><div class="my-rain" style="left:121.13816434455202px;height : 12.964419886351958px;animation-delay:-0.6276876477668824s;animation-duration:0.7751140694826717s;"></div><div class="my-rain" style="left:986.593071247723px;height : 25.00587396496458px;animation-delay:-0.2940294068870023s;animation-duration:0.8766375312131431s;"></div><div class="my-rain" style="left:256.72478054713895px;height : 35.74649433255082px;animation-delay:-0.8468703061945313s;animation-duration:0.8031672294545246s;"></div><div class="my-rain" style="left:714.9365835691103px;height : 18.100176361878034px;animation-delay:-0.006377594780590079s;animation-duration:0.8946657867350989s;"></div><div class="my-rain" style="left:107.14568960735079px;height : 33.854471568337466px;animation-delay:-0.9185328870584595s;animation-duration:0.4862473274659531s;"></div><div class="my-rain" style="left:1138.162633706895px;height : 25.462304589238336px;animation-delay:-0.21187537255576505s;animation-duration:0.6140897987896181s;"></div><div class="my-rain" style="left:1260.7852579085115px;height : 25.47613527367079px;animation-delay:-0.4672602490930762s;animation-duration:0.8831946484981703s;"></div><div class="my-rain" style="left:821.7246416429575px;height : 33.72466135540857px;animation-delay:-0.8492514143319286s;animation-duration:0.659625104711036s;"></div><div class="my-rain" style="left:1073.737432306285px;height : 31.13257538744759px;animation-delay:-0.6606615978745662s;animation-duration:0.49002094556973563s;"></div><div class="my-rain" style="left:532.7619323662436px;height : 31.81940703166599px;animation-delay:-0.9351281969595473s;animation-duration:0.4384322624869796s;"></div><div class="my-rain" style="left:576.6024344955849px;height : 11.744829130869146px;animation-delay:-0.08916848653809095s;animation-duration:0.5179663067360774s;"></div><div class="my-rain" style="left:1080.6431288590331px;height : 13.956227814258432px;animation-delay:-0.7305460919797655s;animation-duration:0.5088639263882773s;"></div><div class="my-rain" style="left:806.5951707785167px;height : 29.801214047837973px;animation-delay:-0.5456430372007747s;animation-duration:0.6852257306933287s;"></div><div class="my-rain" style="left:104.23813670546792px;height : 35.4282010264902px;animation-delay:-0.8163129786080173s;animation-duration:0.6069160598296115s;"></div><div class="my-rain" style="left:936.7661818033553px;height : 18.931605679573458px;animation-delay:-0.7041334978628757s;animation-duration:0.7051815452692838s;"></div><div class="my-rain" style="left:348.85705633294833px;height : 36.71187564605866px;animation-delay:-0.6425359257564636s;animation-duration:0.5175372328951698s;"></div><div class="my-rain" style="left:129.84016729338862px;height : 21.151589787864523px;animation-delay:-0.26920259010669056s;animation-duration:0.8016901272918302s;"></div><div class="my-rain" style="left:1204.9838779876666px;height : 10.000479686944942px;animation-delay:-0.6604892490121616s;animation-duration:0.6270012653652868s;"></div><div class="my-rain" style="left:703.0257788181668px;height : 34.335443546746774px;animation-delay:-0.1944313571291596s;animation-duration:0.7898212101976378s;"></div><div class="my-rain" style="left:932.3102059079508px;height : 24.127064035435026px;animation-delay:-0.966966715502124s;animation-duration:0.8475127183554936s;"></div><div class="my-rain" style="left:246.0650277865652px;height : 14.004207841215681px;animation-delay:-0.9315509808008867s;animation-duration:0.8344347160410583s;"></div><div class="my-rain" style="left:132.19316150141907px;height : 14.28037789400733px;animation-delay:-0.06462910141969536s;animation-duration:0.5348911465572311s;"></div><div class="my-rain" style="left:534.276462667856px;height : 21.546300902102093px;animation-delay:-0.07547034107070394s;animation-duration:0.8061228560384491s;"></div><div class="my-rain" style="left:2.4731802161404914px;height : 27.77201866134967px;animation-delay:-0.7800263988478027s;animation-duration:0.557956711285144s;"></div><div class="my-rain" style="left:51.517406183922674px;height : 35.28783745852668px;animation-delay:-0.8969616484704008s;animation-duration:0.7048873120544754s;"></div><div class="my-rain" style="left:703.8316191793207px;height : 15.194658392620834px;animation-delay:-0.6207960841335819s;animation-duration:0.7175023831360539s;"></div><div class="my-rain" style="left:351.41193545683495px;height : 34.94793168181546px;animation-delay:-0.4599447106401523s;animation-duration:0.8662949167244101s;"></div><div class="my-rain" style="left:481.39893843698104px;height : 16.864934141046383px;animation-delay:-0.0801688105434547s;animation-duration:0.45544607491347117s;"></div><div class="my-rain" style="left:772.3718968878615px;height : 23.59620989579355px;animation-delay:-0.5129493764905185s;animation-duration:0.7522190686388148s;"></div><div class="my-rain" style="left:757.2852530062538px;height : 26.161137994004985px;animation-delay:-0.6367135865509717s;animation-duration:0.5801906374373664s;"></div><div class="my-rain" style="left:380.22150319718634px;height : 20.6902423749087px;animation-delay:-0.8458545457608395s;animation-duration:0.5727704338592254s;"></div><div class="my-rain" style="left:68.28980817634744px;height : 28.383684794928964px;animation-delay:-0.20775348787760772s;animation-duration:0.896154569490208s;"></div><div class="my-rain" style="left:912.0571968326306px;height : 33.7601445245065px;animation-delay:-0.7470104345604457s;animation-duration:0.4915340944536787s;"></div><div class="my-rain" style="left:881.4656451883934px;height : 39.304154618483096px;animation-delay:-0.7356323700271706s;animation-duration:0.6724691464704458s;"></div><div class="my-rain" style="left:1063.2636890035499px;height : 18.477457755575724px;animation-delay:-0.8024334114526499s;animation-duration:0.7057700041288248s;"></div><div class="my-rain" style="left:68.7208929538383px;height : 17.304884697834815px;animation-delay:-0.4783529908344375s;animation-duration:0.7655315351227177s;"></div><div class="my-rain" style="left:487.76517922953883px;height : 16.41730911134824px;animation-delay:-0.5769766278290436s;animation-duration:0.5778215166753651s;"></div><div class="my-rain" style="left:279.36654061260526px;height : 36.92869554214187px;animation-delay:-0.04658846649907755s;animation-duration:0.4954158852911746s;"></div><div class="my-rain" style="left:992.3204609987663px;height : 15.22905081052243px;animation-delay:-0.9908532381516655s;animation-duration:0.7225484590837794s;"></div><div class="my-rain" style="left:386.52712214861367px;height : 27.337207922361426px;animation-delay:-0.17203286032356802s;animation-duration:0.40194802487883613s;"></div><div class="my-rain" style="left:1105.978542428858px;height : 18.920347022435312px;animation-delay:-0.41331880424872625s;animation-duration:0.42567367001579715s;"></div><div class="my-rain" style="left:407.8954024471284px;height : 27.440333002800532px;animation-delay:-0.1273908292092094s;animation-duration:0.48368698575856456s;"></div><div class="my-rain" style="left:1075.7063227335223px;height : 10.983261575687838px;animation-delay:-0.06841684866948017s;animation-duration:0.8728609377097541s;"></div><div class="my-rain" style="left:1060.2283408756246px;height : 18.473018617908487px;animation-delay:-0.0158717109196016s;animation-duration:0.7708388204726287s;"></div><div class="my-rain" style="left:253.04939743612564px;height : 19.787254204935444px;animation-delay:-0.08027672006005093s;animation-duration:0.7064582602526313s;"></div><div class="my-rain" style="left:689.5626876880875px;height : 16.464215062861413px;animation-delay:-0.008032699706134516s;animation-duration:0.5738557475311825s;"></div><div class="my-rain" style="left:693.2530571829888px;height : 34.846022311131605px;animation-delay:-0.19759801715390646s;animation-duration:0.4846742795924487s;"></div></div>' name="rainwrap"]
    [iscript]
    if (f.rain_deg < 0) {
        var c = document.querySelector('.my-rain-container');
        if (c) c.classList.replace('my-rain-container', 'my-rain-container-rev');
    }
    [endscript]
    [layopt layer="1" page="back" visible="true"]
    [trans layer="1" time="%time|500" method="fadeIn"]
    [wt]
[endmacro]

[macro name="hide_rain"]
    [free name="rainwrap" layer="1" time="%time|500" wait="true"]
[endmacro]

; ------------------------------------------------------------
; キャラ表示ラッパー（layer3固定）
; ------------------------------------------------------------

[macro name="show_ajisai_n"]
    [chara_show name="ajisai_n" layer="3" reflect="&f.ch_reflect" time="%time|500" top="200"]
[endmacro]

[macro name="show_ajisai_w"]
    [chara_show name="ajisai_w" layer="3" reflect="&f.ch_reflect" time="%time|500"]
[endmacro]

[return]
