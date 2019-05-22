(function ($) {
    var tmpl = '<div title="{0}">{1}</div>';
    var defaults = {
        title: '提示',
        content: '',
        defaultValue : ''
    };
    /* 静态方法 */
    $.extend({
        format: function (str_tmpl, arg) {
            var result = str_tmpl;
            for (var i = 1; i < arguments.length; i++)
                result = result.replace(new RegExp("\\{" + (i - 1) + "\\}", "g"), arguments[i]);
            return result;
        },
        alert: function (options, callback) {
            if (typeof options == 'string') {
                options = { content: options };
            }
            var settings = $.extend({}, defaults, options);
            var $dig = $(this.format(tmpl, settings.title, settings.content));
            $dig.appendTo("body");
            $dig.dialog({
                resizable: false,
                modal: true,
                buttons: {
                    "确定": function () {
                        $(this).dialog("destroy");
                        if (typeof callback == "function") callback();
                    }
                }
            });
        },
        confirm: function (options, callback) {
            if (typeof options == 'string') {
                options = { content: options };
            }
            var settings = $.extend({}, defaults, options);
            var $dig = $(this.format(tmpl, settings.title, settings.content));
            $dig.appendTo("body");
            $dig.dialog({
                resizable: false,
                modal: true,
                buttons: {
                    "确定": function () {
                        $(this).dialog("destroy");
                        if (typeof callback == "function") callback(true);
                    },
                    "取消": function () {
                        $(this).dialog("destroy");
                        if (typeof callback == "function") callback(false);
                    }
                }
            });
        },
        prompt: function (options, callback) {
            if (typeof options == 'string') {
                options = { content: options };
            }
            var tmpl_s = '<div title="{0}">{1}<br/><input type="text" id="prompt_result" value="{2}" /></div>';
            var settings = $.extend({}, defaults, options);
            var $dig = $(this.format(tmpl_s, settings.title, settings.content, settings.defaultValue));
            $dig.appendTo("body");
            $dig.dialog({
                resizable: false,
                modal: true,
                buttons: {
                    "确定": function () {
                        var ret = $("#prompt_result", this).val();
                        $(this).dialog("destroy");
                        if (typeof callback == "function") callback(ret);
                    },
                    "取消": function () {
                        $(this).dialog("destroy");
                        if (typeof callback == "function") callback('');
                    }
                }
            });
        },
        loading: function (target) {
            var mask = $('<div class="mask"></div>');
            var loading = $('<div class="ui-loading"></div>')
            if (target) {
                $(target).css('position', 'relative');
                mask.css('position', 'absolute');
                loading.css('position', 'absolute');
                mask.appendTo(target);
                loading.appendTo(target);
            } else {
                mask.appendTo("body");
                loading.appendTo("body");
            }
        },
        unloading: function (target) {
            if (target) {
                $(target + ' .mask').remove();
                $(target + ' .ui-loading').remove();
            } else {
                $('.mask').remove();
                $('.ui-loading').remove();
            }
        }
    });
})(jQuery)
