/**
* Array 方法扩展
*/
if (!Array.prototype.contains) {
    /**
    * 判断是否包含元素
    * input:
    *		obj:Object	元素
    * return:
    *		boolean 	是否包含 
    */
    Array.prototype.contains = function (obj) {
        for (var i = 0; i < this.length; i++) {
            if (this[i] === obj) return true;
        }
        return false;
    };
}
if (!Array.prototype.remove) {
    /**
    * 删除元素
    * input:
    *		index:int	元素位置
    * return:
    *		void
    */
    Array.prototype.remove = function (index) {
        if (isNaN(index) || index > this.length) { return false; }
        for (var i = 0, n = 0; i < this.length; i++) {
            if (this[i] != this[index]) {
                this[n++] = this[i];
            }
        }
        this.length -= 1;
    };
}

if (!Array.unique) {
    /**
    * 排重
    */
    Array.unique = function (array) {
        var ret = [], hash = {};
        for (var i = 0, item; (item = array[i]) != null; i++) {
            if (!hash[item]) {
                ret.push(item);
                hash[item] = true;
            }
        }
        return ret;
    };
}

/**
*	字符串操作  
*/
if (!String.format) {
    /**
    * 格式化字符串
    * input:
    *		str_tmpl:String	模版 如	"你好啊,{0}!"
    *		args:Array		填入模版的值
    * return:
    *		String	格式化后的结果字符串
    */
    String.format = function (str_tmpl, args) {
        var result = str_tmpl;
        for (var i = 1; i < arguments.length; i++)
            result = result.replace(new RegExp("\\{" + (i - 1) + "\\}", "g"), arguments[i]);
        return result;
    };
}
if (!String.isNullOrEmpty) {
    /**
    * 判断是否为空或者null
    * input:
    *		str:String	需判断的字符串
    * return:
    *		boolean	 是否是空
    */
    String.isNullOrEmpty = function (str) {
        var _str = str || '';
        return ('' === _str);
    };
}
if (!String.remove) {
    /**
    * 从字符串中移除一段字符
    * input:
    *		str:String	原始字符串
    *		stratPos:int	起始位置(删除包括该位上的字符)
    *		length:int		删除的长度
    * return:
    *		String	结果字符串
    */
    String.remove = function (str, startPos, length) {
        var result = str;
        var _length = length || result.length - startPos;
        var part1 = result.substring(0, startPos);
        var part2 = result.substr(startPos + _length);
        return part1 + part2;
    };
}
if (!String.trim) {
    /**
    * 从字符串中移除一段字符
    * input:
    *		str:String	原始字符串
    *		stratPos:int	起始位置(删除包括该位上的字符)
    *		length:int		删除的长度
    * return:
    *		String	结果字符串
    */
    String.trim = function (str, endchars) {
        var result = str;
        var trimLeft = /^\s+/;
        var trimRight = /\s+$/;
        result = result.replace(trimLeft, "").replace(trimRight, "");
        if (endchars && endchars.length > 0) {
            while (endchars.contains(result.substr(result.length - 1))) {
                result = result.substr(0, result.length - 1);
            }
        }
        return result;
    };
}

if (!String.prototype.remove) {
    String.prototype.remove = function (startPos, length) {
        return String.remove(this, startPos, length);
    };
}

if (!String.prototype.trimChars) {
    String.prototype.trimChars = function (endchars) {
        return String.trim(this, endchars);
    };
}

/**
* url操作对象
*/
if (!Url) {
    var Url = {};
    Url.prototype = {};
    /**
    * 获取url参数值， 如果不存在返回null
    * input:
    *       key:String	url参数名称
    * return:
    *       String 	url参数值
    */
    Url.getParam = function (key) {
        return (window.location.search.match(new RegExp("(?:^\\?|&)" + key + "=(.*?)(?=&|$)")) || ['', null])[1];
    };
    /**
    * 跳转url
    * input:
    *       url:String    	url地址
    *       [target]:Object 目标window 
    */
    Url.forward = function (url, target) {
        if (target) target.location = url;
        else window.location = url;
        return false;
    };
    /**
    * 添加url参数， 如果已经存在则更新
    * input:
    *       url:String    url地址
    *       name:String   参数名
    *       value:String  参数值
    * return:
    *       String	添加参数后的url
    */
    Url.addParam = function (url, name, value) {
        var keyword = name + '=';
        if (url.indexOf(keyword) != -1) { //update
            url = Url.removeParam(url, name);
        }
        return url += (url.indexOf('?') == -1 ? '?' : '&') + keyword + encodeURIComponent(value);
    };
    /**
    * 删除url参数
    * input:
    *       url:String    url地址
    *       name:String   参数名
    * return:
    *       String	删除参数后的url
    */
    Url.removeParam = function (url, name) {
        var keyword = name + '=';
        if (url.indexOf(keyword) != -1 && url.indexOf('?') != -1) {
            var param_start_pos = url.indexOf(keyword);
            var param_end_pos = url.indexOf('&', param_start_pos + keyword.length); //参数结束位置
            param_end_pos = param_end_pos == -1 ? url.length - 1 : param_end_pos; 
            url = String.remove(url, param_start_pos, param_end_pos - param_start_pos + 1);
        }
        return String.trim(url, ['?', '&']);
    };
}
/* 正则表达式 */
if (!RegExp.Pattern) {
    RegExp.Pattern = {
        date: "^(?:(?:1[6-9]|[2-9]\d)?\d{2}[\/\-\.](?:0?[1,3-9]|1[0-2])[\/\-\.](?:29|30))(?: (?:0?\d|1\d|2[0-3])\:(?:0?\d|[1-5]\d)\:(?:0?\d|[1-5]\d)(?: \d{1,3})?)?$|^(?:(?:1[6-9]|[2-9]\d)?\d{2}[\/\-\.](?:0?[1,3,5,7,8]|1[02])[\/\-\.]31)(?: (?:0?\d|1\d|2[0-3])\:(?:0?\d|[1-5]\d)\:(?:0?\d|[1-5]\d)(?: \d{1,3})?)?$|^(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])[\/\-\.]0?2[\/\-\.]29)(?: (?:0?\d|1\d|2[0-3])\:(?:0?\d|[1-5]\d)\:(?:0?\d|[1-5]\d)(?: \d{1,3})?)?$|^(?:(?:16|[2468][048]|[3579][26])00[\/\-\.]0?2[\/\-\.]29)(?: (?:0?\d|1\d|2[0-3])\:(?:0?\d|[1-5]\d)\:(?:0?\d|[1-5]\d)(?: \d{1,3})?)?$|^(?:(?:1[6-9]|[2-9]\d)?\d{2}[\/\-\.](?:0?[1-9]|1[0-2])[\/\-\.](?:0?[1-9]|1\d|2[0-8]))(?: (?:0?\d|1\d|2[0-3])\:(?:0?\d|[1-5]\d)\:(?:0?\d|[1-5]\d)(?:\d{1,3})?)?$"
    };
}

/** 
*    Get Flash Player Version 
*    return:
*        Float   version of flash player
*    Notes:  null when no flash player or unkown version.
*/
function getFlashVersion() {
    var version = null;
    var isIE = navigator.userAgent.toLowerCase().indexOf("msie") != -1
    if (isIE) {
        //for IE
        if (window.ActiveXObject) {
            var control = null;
            try {
                control = new ActiveXObject('ShockwaveFlash.ShockwaveFlash');
            } catch (e) {
            }
            if (control) {
                version = control.GetVariable('$version').substring(4);
                version = version.split(',');
                version = parseFloat(version[0] + '.' + version[1]);
            }
        }
    } else {
        //for other
        var pattern = new RegExp('[^0-9]*([0-9]+\.?[0-9]*)');
        if (navigator.plugins) {
            for (var i = 0; i < navigator.plugins.length; i++) {
                if (navigator.plugins[i].name.toLowerCase().indexOf("shockwave flash") >= 0) {
                    var arr = navigator.plugins[i].description.match(pattern);
                    version = arr && arr.length > 0 ? parseFloat(arr[1]) : null;
                }
            }
        }
    }
    return version;
}
var FLASH_PLAYER_PROVIDER_URI = "http://get.adobe.com/cn/flashplayer/";

// 对Date的扩展，将 Date 转化为指定格式的String 
// 月(M)、日(d)、小时(h)、分(m)、秒(s)、季度(q) 可以用 1-2 个占位符， 
// 年(y)可以用 1-4 个占位符，毫秒(S)只能用 1 个占位符(是 1-3 位的数字) 
// 例子： 
// (new Date()).Format("yyyy-MM-dd hh:mm:ss.S") ==> 2006-07-02 08:09:04.423 
// (new Date()).Format("yyyy-M-d h:m:s.S")      ==> 2006-7-2 8:9:4.18 
Date.prototype.Format = function (fmt) { //author: meizz 
    var o = {
        "M+": this.getMonth() + 1,                 //月份 
        "d+": this.getDate(),                    //日 
        "h+": this.getHours(),                   //小时 
        "m+": this.getMinutes(),                 //分 
        "s+": this.getSeconds(),                 //秒 
        "q+": Math.floor((this.getMonth() + 3) / 3), //季度 
        "S": this.getMilliseconds()             //毫秒 
    };
    if (/(y+)/.test(fmt))
        fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    for (var k in o)
        if (new RegExp("(" + k + ")").test(fmt))
            fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
    return fmt;
};
Date.prototype.AddDays = function (days) {
    var ret = new Date();
    ret.setTime(this.getTime() + days * 24 * 60 * 60 * 1000);
    return ret;
};
Date.prototype.AddHours = function (hours) {
    var ret = new Date();
    ret.setTime(this.getTime() + hours * 60 * 60 * 1000);
    return ret;
};
Date.prototype.AddMinutes = function (minutes) {
    var ret = new Date();
    ret.setTime(this.getTime() + minutes * 60 * 1000);
    return ret;
};
Date.prototype.AddSeconds = function (seconds) {
    var ret = new Date();
    ret.setTime(this.getTime() + seconds * 1000);
    return ret;
};