;(function () {
    /**
     *
     * タップエフェクトプラグイン
     *
     */

    /**
     * 定数
     */
    const FIGURE_CIRCLE = "circle.svg"
    const FIGURE_RECT = "rectangle.svg"
    const FIGURE_PENTAGON = "pentagon.svg"
    const FIGURE_HEXAGON = "hexagon.svg"
    const FIGURE_STAR = "star.svg"
    const FIGURE_TWINKLE = "twinkle.svg"

    /**
     * 変数定義
     */
    TYRANO.kag.variable.sf._tap_effect = []
    TYRANO.kag.stat.f._tap_effect = false

    /**
     * 関数定義
     */
    const getRand = (min, max) => {
        const rand = Math.floor(Math.random() * (max - min + 1) + min)
        return rand
    }

    /**
     * タグ定義
     */
    TYRANO.kag.tag.tap_effect_set = {
        vital: ["type", "figure"],
        pm: {
            type: "",
            figure: "",
            ratio: "1/1",
            bg_none: "false",
            bg_color: "",
            border_none: "false",
            border_color: "",
            border_width: "0",
            pos_start: "0",
            pos_end: "0",
            count_min: "0",
            count_max: "0",
            size_min: "0",
            size_max: "0",
            duration: "0",
            start_delay: "0",
            delete_delay: "0",
            delete_time: "0",
            delete_type: "fade",
        },
        start(pm) {
            const that = this
            const sf = TYRANO.kag.variable.sf._tap_effect

            pm.border_width = parseInt(pm.border_width)
            pm.pos_start = parseInt(pm.pos_start)
            pm.pos_end = parseInt(pm.pos_end)
            pm.count_min = parseInt(pm.count_min)
            pm.count_max = parseInt(pm.count_max)
            pm.size_min = parseInt(pm.size_min)
            pm.size_max = parseInt(pm.size_max)
            pm.duration = parseInt(pm.duration)
            pm.start_delay = parseInt(pm.start_delay)
            pm.delete_delay = parseInt(pm.delete_delay)
            pm.delete_time = parseInt(pm.delete_time)

            if (pm.figure === "circle") {
                pm.svg = pm.figure
            } else if (pm.figure === "rect") {
                pm.svg = pm.figure
            } else {
                pm.svg = "path"
            }

            if (pm.bg_none === "true") {
                pm.bg_color = "transparent"
            }
            pm.bg_color = $.convertColor(pm.bg_color)
            if (pm.border_none === "true") {
                pm.border_color = "transparent"
            }
            pm.border_color = $.convertColor(pm.border_color)

            let isDuplicates = false
            //重複チェック
            for (let i = 0; i < sf.length; i++) {
                const elm = sf[i]
                const elmEqual = []
                elmEqual.push(elm.type === pm.type)
                elmEqual.push(elm.figure === pm.figure)
                elmEqual.push(elm.ratio === pm.ratio)
                elmEqual.push(elm.bg_none === pm.bg_none)
                elmEqual.push(elm.bg_color === pm.bg_color)
                elmEqual.push(elm.border_none === pm.border_none)
                elmEqual.push(elm.border_color === pm.border_color)
                elmEqual.push(elm.border_width === pm.border_width)
                elmEqual.push(elm.pos_start === pm.pos_start)
                elmEqual.push(elm.pos_end === pm.pos_end)
                elmEqual.push(elm.count_min === pm.count_min)
                elmEqual.push(elm.count_max === pm.count_max)
                elmEqual.push(elm.size_min === pm.size_min)
                elmEqual.push(elm.size_max === pm.size_max)
                elmEqual.push(elm.duration === pm.duration)
                elmEqual.push(elm.start_delay === pm.start_delay)
                elmEqual.push(elm.delete_delay === pm.delete_delay)
                elmEqual.push(elm.delete_time === pm.delete_time)
                elmEqual.push(elm.delete_type === pm.delete_type)
                isDuplicates = !elmEqual.includes(false)
                if (isDuplicates) break
            }

            //完全一致してたら終了
            if (isDuplicates) {
                that.kag.ftag.nextOrder()
                return false
            }

            $.get(`./data/others/plugin/tap_effect/svg/${pm.figure}.svg`, function (data) {
                pm.figure = data.documentElement

                sf.push(pm)

                that.kag.ftag.nextOrder()
            })
        },
    }
    TYRANO.kag.ftag.master_tag.tap_effect_set = TYRANO.kag.tag.tap_effect_set
    TYRANO.kag.ftag.master_tag.tap_effect_set.kag = TYRANO.kag

    TYRANO.kag.tag.tap_effect_start = {
        vital: [],
        pm: {},
        start(pm) {
            const that = this
            const sf = TYRANO.kag.variable.sf._tap_effect
            TYRANO.kag.stat.f._tap_effect = true

            const clickEvent = (x, y) => {
                let scale = $(".tyrano_base").css("transform")
                scale = scale.substring(0, scale.indexOf(",")).replace("matrix(", "")
                let marginTop = $(".tyrano_base").css("margin-top").replace("px", "")
                let marginLeft = $(".tyrano_base").css("margin-left").replace("px", "")

                const effect_wrapper = $("<div />")
                effect_wrapper.css({
                    position: "absolute",
                    //transform: "translate(-50%, -50%)",
                    top: `${(y - marginTop) / (scale || 1)}px`,
                    left: `${(x - marginLeft) / (scale || 1)}px`,
                    // width: "100px",
                    // height: "100px",
                    "z-index": 9999999999,
                    "pointer-events": "none",
                })
                sf.forEach((val, idx) => {
                    const aspect = val.ratio.split("/")
                    const widthRatio = aspect[0] < aspect[1] ? aspect[0] / aspect[1] : 1
                    const heightRatio = aspect[0] < aspect[1] ? 1 : aspect[1] / aspect[0]
                    if (val.type === "ripple") {
                        const object = $(val.figure).clone()
                        const figure = object.find(val.svg)
                        //波紋アニメーション
                        figure.attr({
                            r: `${50 - val.border_width / 2}`,
                        })
                        figure.css({
                            fill: val.bg_color,
                            stroke: val.border_color,
                            "stroke-width": `${val.border_width}px`,
                        })
                        object.css({
                            position: "absolute",
                            transform: "translate(-50%, -50%)",
                            width: `${val.pos_start * 2 * widthRatio}px`,
                            height: `${val.pos_start * 2 * heightRatio}px`,
                            "transform-origin": "center",
                        })
                        object.delay(val.start_delay).animate(
                            {
                                width: `${val.pos_end * 2 * widthRatio}px`,
                                height: `${val.pos_end * 2 * heightRatio}px`,
                            },
                            {
                                duration: val.duration,
                                queue: false,
                            }
                        )
                        if (val.delete_type === "fade") {
                            object.delay(val.start_delay + val.duration + val.delete_delay).fadeOut(val.delete_time, function () {
                                effect_wrapper.remove()
                            })
                        } else {
                            object.delay(val.start_delay + val.duration + val.delete_delay).hide(val.delete_time, function () {
                                object.remove()
                                if (effect_wrapper.find("*").length === 0) {
                                    //すべてのアニメーション終了し、空になっていたら
                                    effect_wrapper.remove()
                                }
                            })
                        }
                        effect_wrapper.append(object)
                    } else {
                        //パーティクルアニメーション
                        const count = getRand(val.count_min, val.count_max)
                        for (let i = 0; i < count; i++) {
                            const object = $(val.figure).clone()
                            const figure = object.find(val.svg)
                            const size = getRand(val.size_min, val.size_max)
                            const angle = 360 * Math.random()

                            figure.attr({
                                r: `${50 - val.border_width / 2}`,
                            })
                            figure.css({
                                fill: val.bg_color,
                                stroke: val.border_color,
                                "stroke-width": `${val.border_width}px`,
                            })

                            object.on(`transitionend`, function () {
                                object.off(`transitionend`)
                                object.css("transition", "none")
                            })
                            object.css({
                                position: "absolute",
                                transform: `rotate(${angle}deg) translateY(${val.pos_start}px)`,
                                width: `${size * widthRatio}px`,
                                height: `${size * heightRatio}px`,
                                "transform-origin": "center",
                                transition: `${val.duration}ms`,
                            })

                            setTimeout(function () {
                                setTimeout(function () {
                                    object.css({
                                        transform: `rotate(${angle}deg) translateY(${val.pos_end}px)`,
                                    })
                                }, 10)
                            }, val.start_delay)
                            if (val.delete_type === "fade") {
                                object.delay(val.start_delay + val.duration + val.delete_delay).fadeOut(val.delete_time, function () {
                                    object.remove()
                                    if (effect_wrapper.find("*").length === 0) {
                                        //すべてのアニメーション終了し、空になっていたら
                                        effect_wrapper.remove()
                                    }
                                })
                            } else {
                                object.delay(val.start_delay + val.duration + val.delete_delay).hide(val.delete_time, function () {
                                    object.remove()
                                    if (effect_wrapper.find("*").length === 0) {
                                        //すべてのアニメーション終了し、空になっていたら
                                        effect_wrapper.remove()
                                    }
                                })
                            }
                            effect_wrapper.append(object)
                        }
                    }
                })
                $(".tyrano_base").append(effect_wrapper)
            }

            $(".tyrano_base,.layer_event_click").on("mousedown.tap_effect touchstart.tap_effect", function (e) {
                //e.preventDefault()
                const x = e.clientX || e.targetTouches[0].clientX
                const y = e.clientY || e.targetTouches[0].clientY
                clickEvent(x, y)
            })

            that.kag.ftag.nextOrder()
        },
    }
    TYRANO.kag.ftag.master_tag.tap_effect_start = TYRANO.kag.tag.tap_effect_start
    TYRANO.kag.ftag.master_tag.tap_effect_start.kag = TYRANO.kag

    TYRANO.kag.tag.tap_effect_stop = {
        vital: [],
        pm: {},
        start(pm) {
            const that = this
            const sf = TYRANO.kag.variable.sf._tap_effect
            TYRANO.kag.stat.f._tap_effect = false

            //タップエフェクト削除
            $(".tyrano_base,.event-setting-element").off("mousedown.tap_effect touchstart.tap_effect")

            that.kag.ftag.nextOrder()
        },
    }
    TYRANO.kag.ftag.master_tag.tap_effect_stop = TYRANO.kag.tag.tap_effect_stop
    TYRANO.kag.ftag.master_tag.tap_effect_stop.kag = TYRANO.kag

    TYRANO.kag.tag.tap_effect_restore = {
        vital: [],
        pm: {},
        start(pm) {
            const that = this
            const sf = TYRANO.kag.variable.sf._tap_effect
            TYRANO.kag.stat.f._tap_effect = false

            if (TYRANO.kag.stat.f._tap_effect) {
                TYRANO.kag.ftag.startTag("tap_effect_start")
            } else {
                that.kag.ftag.nextOrder()
            }
        },
    }
    TYRANO.kag.ftag.master_tag.tap_effect_restore = TYRANO.kag.tag.tap_effect_restore
    TYRANO.kag.ftag.master_tag.tap_effect_restore.kag = TYRANO.kag

    /**
     * 既存関数変更
     */
    $.event.tap = function (o) {
        o.bind("touchstart", onTouchStart_)
        function onTouchStart_(e) {
            //e.preventDefault()
            o.data("event.tap.moved", false).one("touchmove", onTouchMove_).one("touchend", onTouchEnd_)
            //e.stopPropagation()
        }

        function onTouchMove_(e) {
            //o.data('event.tap.moved', true);
            e.stopPropagation()
        }

        function onTouchEnd_(e) {
            if (!o.data("event.tap.moved")) {
                o.unbind("touchmove", onTouchMove_)
                o.trigger("click").click()
                e.stopPropagation()
            }
        }
    }
})()
