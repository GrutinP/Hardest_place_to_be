/*
    ティラノビルダープラグイン開発用のテンプレート
    まず、このファイルを編集してプラグイン開発を試してみると良いでしょう。    
*/

"use strict"
module.exports = class plugin_setting {
    constructor(TB) {
        /* TBはティラノビルダーの機能にアクセスするためのインターフェスを提供する */
        this.TB = TB

        /* プラグイン名を格納する */
        this.name = TB.$.s("タップエフェクトプラグイン")

        /*プラグインの説明文を格納する*/
        this.plugin_text = TB.$.s("タップエフェクトを追加します")

        /*プラグイン説明用の画像ファイルを指定する。プラグインフォルダに配置してください*/
        this.plugin_img = "no_image"
    }

    /* プラグインをインストールを実行した時１度だけ走ります。フォルダのコピーなどにご活用ください。*/
    triggerInstall() {
        /*
        //プラグインからプロジェクトにファイルをコピーするサンプルです 
        var project_path = TB.getProjectPath() ; 
        var from_path = project_path + "data/others/plugin/plugin_template/copy_folder";
        var to_path = project_path + "data/image/copy_folder";
        TB.io.copy(from_path,to_path);
        */
    }

    /*
        追加するコンポーネントを定義します。
    */

    defineComponents() {
        var cmp = {}
        var TB = this.TB

        /*
            cmp配列
            cmpにプラグイン用のコンポーネントを定義していきます。
            配列名にはタグ名を指定してください。
            他のタグと被らないように世界で一つだけの名称になるように工夫してください。
            （自分の所持しているドメイン名を含めるなど）
        */

        /*
            sample_component_1 
            次のパラメータのサンプルを設置
            Image:イメージ選択
            
        */

        cmp["tap_effect_set"] = {
            info: {
                default: true /*trueを指定するとコンポーネントがデフォルトで配置されます。*/,
                name: TB.$.s("タップエフェクト定義") /* コンポーネント名称 */,
                help: TB.$.s("タップエフェクトを定義します") /* コンポーネントの説明を記述します */,
                icon: TB.$.s("s-icon-star-full") /* ここは変更しないでください */,
            },

            /* コンポーネントの情報の詳細を定義します */

            component: {
                name: TB.$.s("タップエフェクト定義") /* コンポーネント名称 */,
                component_type: "Simple" /*タイムラインのコンポーネントタイプ Simple Movie Image Text Soundが指定可能 */,

                /*ビューに渡す値*/
                default_view: {
                    base_img_url: "data/bgimage/" /*画像選択のベースとなるフォルダを指定*/,
                    icon: "s-icon-star-full" /*変更しない*/,
                    icon_color: "#FFFF99" /*変更しない*/,
                    category: "plugin" /*変更しない*/,
                },

                /*変更しない*/
                param_view: {},

                /* コンポーネントのパラメータを定義していきます */
                param: {
                    /*パラメータを指定します。storageはパラメータ名を表しています。*/
                    type: {
                        type: "Select",
                        name: TB.$.s("エフェクトの種類"),
                        select_list: [
                            {
                                name: TB.$.s("波紋"),
                                val: "ripple",
                            },
                            {
                                name: TB.$.s("パーティクル"),
                                val: "particle",
                            },
                        ],
                        default_val: "ripple",
                        help: TB.$.s("波紋：1つの図形が中央から広がっていく／パーティクル：複数の図形が散らばる"),
                    },
                    figure: {
                        type: "Select",
                        name: TB.$.s("図形"),
                        select_list: [
                            {
                                name: TB.$.s("円"),
                                val: "circle",
                            },
                            {
                                name: TB.$.s("長方形"),
                                val: "rect",
                            },
                            {
                                name: TB.$.s("三角形"),
                                val: "triangle",
                            },
                            {
                                name: TB.$.s("五角形"),
                                val: "pentagon",
                            },
                            {
                                name: TB.$.s("六角形"),
                                val: "hexagon",
                            },
                            {
                                name: TB.$.s("星"),
                                val: "star",
                            },
                            {
                                name: TB.$.s("キラキラ"),
                                val: "twinkle",
                            },
                        ],
                        default_val: "circle",
                        help: TB.$.s("図形の種類を選択します"),
                    },
                    /*テキストの自由入力*/
                    ratio: {
                        type: "Text",
                        name: TB.$.s("縦横比"),
                        help: TB.$.s("横/縦の形式で入力"),
                        validate: {
                            required: true,
                        },
                        onChange: function (val, component) {
                            TB.component.changeParam(component, "ratio", val)
                        },
                    },
                    /*チェックボックス形式*/
                    bg_none: {
                        type: "Check",
                        text: TB.$.s("背景なし"),
                        help: TB.$.s("背景色を透明にする場合はチェック"),
                        default_val: false,
                    },
                    /*カラー選択の形式*/
                    bg_color: {
                        type: "Color",
                        name: TB.$.s("背景色"),
                        help: TB.$.s("図形の塗りつぶし色を選択"),
                        default_val: "0xffffff",
                        validate: {
                            required: true,
                        },
                    },

                    border_none: {
                        type: "Check",
                        text: TB.$.s("枠線なし"),
                        help: TB.$.s("枠線なしにする場合はチェック"),
                        default_val: false,
                    },
                    border_color: {
                        type: "Color",
                        name: TB.$.s("枠線色"),
                        help: TB.$.s("枠線色を選択"),
                        default_val: "0xffffff",
                        validate: {
                            required: true,
                        },
                    },
                    border_width: {
                        type: "Num" /*Numは数字入力を設定できます*/,
                        name: "枠線幅" /*パラメータ名*/,
                        unit: "px" /*単位を表示できます*/,
                        help: TB.$.s("枠線の幅を指定"),
                        default_val: 0 /*初期値*/,
                        spinner: {
                            min: 0 /*入力の最小値*/,
                            max: 100 /*入力の最大値*/,
                            step: 1 /*スピナーを１回動かした時のステップ値*/,
                        },
                        validate: {
                            number: true /*数値か否かのチェックを有効化*/,
                        },
                    },

                    pos_start: {
                        type: "Num" /*Numは数字入力を設定できます*/,
                        name: "開始位置" /*パラメータ名*/,
                        unit: "px" /*単位を表示できます*/,
                        help: TB.$.s("アニメーション開始時の図形位置、クリック地点からの距離を指定"),
                        default_val: 0 /*初期値*/,
                        spinner: {
                            min: 0 /*入力の最小値*/,
                            max: 1000 /*入力の最大値*/,
                            step: 1 /*スピナーを１回動かした時のステップ値*/,
                        },
                        validate: {
                            number: true /*数値か否かのチェックを有効化*/,
                        },
                    },
                    pos_end: {
                        type: "Num" /*Numは数字入力を設定できます*/,
                        name: "終了位置" /*パラメータ名*/,
                        unit: "px" /*単位を表示できます*/,
                        help: TB.$.s("アニメーション終了時の図形位置、クリック地点からの距離を指定"),
                        default_val: 0 /*初期値*/,
                        spinner: {
                            min: 0 /*入力の最小値*/,
                            max: 1000 /*入力の最大値*/,
                            step: 1 /*スピナーを１回動かした時のステップ値*/,
                        },
                        validate: {
                            number: true /*数値か否かのチェックを有効化*/,
                        },
                    },

                    count_min: {
                        type: "Num" /*Numは数字入力を設定できます*/,
                        name: "最小個数" /*パラメータ名*/,
                        unit: "px" /*単位を表示できます*/,
                        help: TB.$.s("種類：パーティクルのとき、一度に表示する図形の最小個数を指定"),
                        default_val: 0 /*初期値*/,
                        spinner: {
                            min: 0 /*入力の最小値*/,
                            max: 100 /*入力の最大値*/,
                            step: 1 /*スピナーを１回動かした時のステップ値*/,
                        },
                        validate: {
                            number: true /*数値か否かのチェックを有効化*/,
                        },
                    },
                    count_max: {
                        type: "Num" /*Numは数字入力を設定できます*/,
                        name: "最大個数" /*パラメータ名*/,
                        unit: "px" /*単位を表示できます*/,
                        help: TB.$.s("種類：パーティクルのとき、一度に表示する図形の最大個数を指定"),
                        default_val: 0 /*初期値*/,
                        spinner: {
                            min: 0 /*入力の最小値*/,
                            max: 100 /*入力の最大値*/,
                            step: 1 /*スピナーを１回動かした時のステップ値*/,
                        },
                        validate: {
                            number: true /*数値か否かのチェックを有効化*/,
                        },
                    },

                    size_min: {
                        type: "Num" /*Numは数字入力を設定できます*/,
                        name: "最小サイズ" /*パラメータ名*/,
                        unit: "px" /*単位を表示できます*/,
                        help: TB.$.s("種類：パーティクルのとき、図形の最小サイズを指定"),
                        default_val: 0 /*初期値*/,
                        spinner: {
                            min: 0 /*入力の最小値*/,
                            max: 100 /*入力の最大値*/,
                            step: 1 /*スピナーを１回動かした時のステップ値*/,
                        },
                        validate: {
                            number: true /*数値か否かのチェックを有効化*/,
                        },
                    },
                    size_max: {
                        type: "Num" /*Numは数字入力を設定できます*/,
                        name: "最大サイズ" /*パラメータ名*/,
                        unit: "px" /*単位を表示できます*/,
                        help: TB.$.s("種類：パーティクルのとき、図形の最大サイズを指定"),
                        default_val: 0 /*初期値*/,
                        spinner: {
                            min: 0 /*入力の最小値*/,
                            max: 100 /*入力の最大値*/,
                            step: 1 /*スピナーを１回動かした時のステップ値*/,
                        },
                        validate: {
                            number: true /*数値か否かのチェックを有効化*/,
                        },
                    },

                    duration: {
                        type: "Num" /*Numは数字入力を設定できます*/,
                        name: "アニメーション時間" /*パラメータ名*/,
                        unit: "ﾐﾘ秒" /*単位を表示できます*/,
                        help: TB.$.s("アニメーションにかける時間を指定"),
                        default_val: 0 /*初期値*/,
                        spinner: {
                            min: 0 /*入力の最小値*/,
                            max: 10000 /*入力の最大値*/,
                            step: 100 /*スピナーを１回動かした時のステップ値*/,
                        },
                        validate: {
                            number: true /*数値か否かのチェックを有効化*/,
                        },
                    },
                    start_delay: {
                        type: "Num" /*Numは数字入力を設定できます*/,
                        name: "アニメーション開始時間" /*パラメータ名*/,
                        unit: "ﾐﾘ秒" /*単位を表示できます*/,
                        help: TB.$.s("クリックしてからアニメーション開始するまでの時間を指定"),
                        default_val: 0 /*初期値*/,
                        spinner: {
                            min: 0 /*入力の最小値*/,
                            max: 10000 /*入力の最大値*/,
                            step: 100 /*スピナーを１回動かした時のステップ値*/,
                        },
                        validate: {
                            number: true /*数値か否かのチェックを有効化*/,
                        },
                    },

                    delete_delay: {
                        type: "Num" /*Numは数字入力を設定できます*/,
                        name: "図形消去開始時間" /*パラメータ名*/,
                        unit: "ﾐﾘ秒" /*単位を表示できます*/,
                        help: TB.$.s("アニメーション終了してから図形を消去開始するまでの時間を指定、負の値を指定するとアニメーション終了前から消去開始"),
                        default_val: 0 /*初期値*/,
                        spinner: {
                            min: -10000 /*入力の最小値*/,
                            max: 10000 /*入力の最大値*/,
                            step: 100 /*スピナーを１回動かした時のステップ値*/,
                        },
                        validate: {
                            number: true /*数値か否かのチェックを有効化*/,
                        },
                    },
                    delete_time: {
                        type: "Num" /*Numは数字入力を設定できます*/,
                        name: "図形消去時間" /*パラメータ名*/,
                        unit: "ﾐﾘ秒" /*単位を表示できます*/,
                        help: TB.$.s("図形を消去するのにかける時間を指定"),
                        default_val: 0 /*初期値*/,
                        spinner: {
                            min: 0 /*入力の最小値*/,
                            max: 10000 /*入力の最大値*/,
                            step: 100 /*スピナーを１回動かした時のステップ値*/,
                        },
                        validate: {
                            number: true /*数値か否かのチェックを有効化*/,
                        },
                    },
                    delete_type: {
                        type: "Select",
                        name: TB.$.s("図形消去タイプ"),
                        select_list: [
                            {
                                name: TB.$.s("フェード"),
                                val: "fade",
                            },
                            {
                                name: TB.$.s("最小化"),
                                val: "minimize",
                            },
                        ],
                        default_val: "fade",
                        help: TB.$.s("フェード：図形が透明になりながら消去、最小化：図形が小さくなりながら消去"),
                    },
                },

                /*
                    途中からプレビューの時に実行するタグを返す。
                    例えば背景変更の機能をもったコンポーネントの場合、
                    途中からプレビューのときに背景変更のタグを実行しておかないと
                    途中からプレビューにこのコンポーネントが反映されません。
                    timeなどの時間は短くしておく必要があります。
                */
                /*
                preview_tag:function(preview,cmp){
                    
                    var storage = cmp.data.pm["storage"]; 
                    
                    //返却用のタグを設定
                    preview.code_current_bg ="[bg time=10 storage="+storage+" ] \n";
                             
                },
                */
            },
        }

        /* 
            cmp は複数設定することができます。
            つまり、１プラグインに対して３つのコンポーネントを追加するようなことも可能です。
        */

        /*イメージ選択、位置変更など*/
        cmp["tap_effect_start"] = {
            info: {
                default: true /*trueを指定するとコンポーネントがデフォルトで配置されます。*/,
                name: TB.$.s("タップエフェクト開始") /* コンポーネント名称 */,
                help: TB.$.s("タップエフェクトを有効にします") /* コンポーネントの説明を記述します */,
                icon: TB.$.s("s-icon-star-full") /* ここは変更しないでください */,
            },

            /* コンポーネントの情報の詳細を定義します */

            component: {
                name: TB.$.s("タップエフェクト開始") /* コンポーネント名称 */,

                /*
                    headerが定義されている場合、タイムライン上のコンポーネントバー部分の文字列を自由に設定できます。
                    以下の例はジャンプ先のシナリオ名とターゲットをバーに表示させて視認性を確保します。
                */

                component_type: "Simple" /*タイムラインのコンポーネントタイプ Simpleはバーのみ */,

                /*ビューに渡す値*/
                default_view: {
                    base_img_url: "data/fgimage/" /*画像選択のベースとなるフォルダを指定*/,
                    icon: "s-icon-star-full" /*変更しない*/,
                    icon_color: "#FFFF99" /*変更しない*/,
                    category: "plugin" /*変更しない*/,
                },

                /*変更しない*/
                param_view: {},

                /*
                    write_system_code
                    以下のメソッドは、同時生成されるシステム用のシナリオファイルにタグを追加することができます
                    scene1.ks なら system/_scene1.ks です。
                    プリロードや準備作業が必要な場合はこのメソッドでタグを記述してください。
                */

                /* コンポーネントのパラメータを定義していきます */
                param: {},
            },
        }

        /*ジャンプ指定などを確認できるコンポーネント*/
        cmp["tap_effect_stop"] = {
            info: {
                default: true /*trueを指定するとコンポーネントがデフォルトで配置されます。*/,
                name: TB.$.s("エフェクト終了") /* コンポーネント名称 */,
                help: TB.$.s("タップエフェクトを無効にします") /* コンポーネントの説明を記述します */,
                icon: TB.$.s("s-icon-star-full") /* ここは変更しないでください */,
            },

            /* コンポーネントの情報の詳細を定義します */

            component: {
                name: TB.$.s("エフェクト終了") /* コンポーネント名称 */,

                /*
                    headerが定義されている場合、タイムライン上のコンポーネントバー部分の文字列を自由に設定できます。
                    以下の例はジャンプ先のシナリオ名とターゲットをバーに表示させて視認性を確保します。
                */

                component_type: "Simple" /*タイムラインのコンポーネントタイプ Simpleはバーのみ */,

                /*ビューに渡す値*/
                default_view: {
                    icon: "s-icon-star-full" /*変更しない*/,
                    icon_color: "#FFFF99" /*変更しない*/,
                    category: "plugin" /*変更しない*/,
                },

                /*変更しない*/
                param_view: {},

                /* コンポーネントのパラメータを定義していきます */
                param: {},
            },
        }

        return cmp
    }

    test() {}
}
