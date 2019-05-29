var basePath = sitePath || "";
var allPlugin = {
    Code: {
        c: 'btnCode', t: '插入代码', h: 1, e: function () {
            var _this = this;
            var htmlCode = '<div><select id="xheCodeType"><option value="html">HTML/XML</option><option value="js">Javascript</option><option value="css">CSS</option><option value="php">PHP</option><option value="java">Java</option><option value="py">Python</option><option value="pl">Perl</option><option value="rb">Ruby</option><option value="cs">C#</option><option value="c">C++/C</option><option value="vb">VB/ASP</option><option value="">其它</option></select></div><div><textarea id="xheCodeValue" wrap="soft" spellcheck="false" style="width:300px;height:100px;" /></div><div style="text-align:right;"><input type="button" id="xheSave" value="确定" /></div>';
            var jCode = $(htmlCode), jType = $('#xheCodeType', jCode), jValue = $('#xheCodeValue', jCode), jSave = $('#xheSave', jCode);
            jSave.click(function () {
                _this.loadBookmark();
                _this.pasteHTML('<pre class="prettyprint lang-' + jType.val() + '">' + _this.domEncode(jValue.val()) + '</pre>');
                _this.hidePanel();
                return false;
            });
            _this.saveBookmark();
            _this.showDialog(jCode);
        }
    },
    Audio: {
        c: 'btnAudio', t: '插入音频', e: function () {
            var _this = this;
            _this.saveBookmark();
            _this.showIframeModal('插入音频', basePath + '/base/drive_file_list?f=mp3', function (v) {
                _this.loadBookmark();
                var flashMov = basePath + "/Content/swf/dewplayer-mini.swf";
                _this.pasteHTML('<object type="application/x-shockwave-flash" data="' + flashMov + '" width="160" height="20" id="dewplayer" name="dewplayer"> <param name="wmode" value="transparent" /><param name="movie" value="' + flashMov + '" /> <param name="flashvars" value="mp3=' + v + '&showtime=1" /> </object>');
            }, 300, 300);
        }
    },
    Video: {
        c: 'btnVideo', t: '插入视频', e: function () {
            var _this = this;
            _this.saveBookmark();
            _this.showIframeModal('插入视频', basePath + 'launcher/videoChioce', function (v) {
                _this.loadBookmark();
                _this.pasteHTML('<p><video src="' + v + '" preload controls width="640" style="max-width:100% !important;">您的浏览器不支持 video 标签。</video ></p>');
            }, 460, 320);
        }
    }
};

var full = {
    plugins: allPlugin,
    tools: 'Bold,Italic,Underline,Strikethrough,FontColor,BackColor,|,' +
        'Link,Unlink,Img,Video,Table,Code,|,Source,Preview,Fullscreen,About',
    skin: 'nostyle',
    disableContextmenu: true,
    upBtnText: '上传',
    forcePtag: false,
    html5Upload: false,
    //upLinkUrl: basePath + '/Base/editorUpload',
    //upLinkExt: 'zip,rar,txt,doc,docx,xls,xlsx,ppt,pptx,pdf',
    upImgUrl: basePath + '/Base/editorUpload',
    upFlashUrl: basePath + '/Base/editorUpload',
    //upMediaUrl: basePath + '/Base/editorUpload',
    cleanPaste: 2, internalStyle: false, inlineStyle: false
};

var basic = {
    tools: 'Bold,Italic,Underline,Strikethrough,FontColor,BackColor,|,' +
        'Link,Unlink,Img,Hr,Emot,Table,|,About',
    skin: 'nostyle',
    disableContextmenu: true,
    upBtnText: '上传',
    forcePtag: false,
    html5Upload: false,
    //upLinkUrl: basePath + '/Base/editorUpload',
    //upLinkExt: 'zip,rar,txt,doc,docx,xls,xlsx,ppt,pptx,pdf',
    upImgUrl: basePath + '/Base/editorUpload',
    upFlashUrl: basePath + '/Base/editorUpload',
    //upMediaUrl: basePath + '/Base/editorUpload',
    cleanPaste: 2, internalStyle: false, inlineStyle: false
};

var mini = {
    plugins: allPlugin,
    tools: 'Bold,Italic,Underline,Strikethrough,FontColor,BackColor,|,' +
        'Link,Unlink,Img,Code,Source',
    skin: 'nostyle',
    disableContextmenu: true,
    upBtnText: '上传',
    forcePtag: false,
    html5Upload: false,
    //upLinkUrl: basePath + '/Base/editorUpload',
    //upLinkExt: 'zip,rar,txt,doc,docx,xls,xlsx,ppt,pptx,pdf',
    upImgUrl: basePath + '/Base/editorUpload',
    upFlashUrl: basePath + '/Base/editorUpload',
    upMediaUrl: basePath + '/Base/editorUpload',
    cleanPaste: 2, internalStyle: false, inlineStyle: false
};