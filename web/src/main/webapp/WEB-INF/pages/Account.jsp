<%--
  Created by IntelliJ IDEA.
  User: 斌
  Date: 2019/5/27
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<!--[if lt IE 7 ]> <html class="ie6"> <![endif]-->
<!--[if IE 7 ]> <html class="ie7"> <![endif]-->
<!--[if IE 8 ]> <html class="ie8"> <![endif]-->
<!--[if IE 9 ]> <html class="ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html>
<!--<![endif]-->
<head>
    <title>个人资料编辑</title>
    <script>
        var sitePath = '/';
    </script>
    <link href="<%=request.getContextPath()%>/Content/themes/base/jquery.ui.all.css" rel="stylesheet" type="text/css" />
    <link href="<%=request.getContextPath()%>/Content/Site.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/Content/plugins/Font-Awesome-4.4.0/css/font-awesome.min.css">
    <link href="<%=request.getContextPath()%>/Content/front.css" rel="stylesheet" type="text/css" />
    <link href="<%=request.getContextPath()%>/Content/breadcrumb.css" rel="stylesheet" type="text/css" />
    <link href="<%=request.getContextPath()%>/Content/fileicon.css" rel="stylesheet" type="text/css" />
    <link href="<%=request.getContextPath()%>/Content/component.css" rel="stylesheet" type="text/css" />
    <link href="<%=request.getContextPath()%>/Content/form.css" rel="stylesheet" type="text/css" />
    <link href="<%=request.getContextPath()%>/Content/misc.css" rel="stylesheet" type="text/css" />
    <script src="<%=request.getContextPath()%>/Scripts/jquery-1.5.1.min.js" type="text/javascript"></script>
    <script src="<%=request.getContextPath()%>/Scripts/jquery-ui-1.8.11.min.js" type="text/javascript"></script>
    <script src="<%=request.getContextPath()%>/Scripts/jquery.ui.datepicker-zh-CN.js" type="text/javascript"></script>
    <script src="<%=request.getContextPath()%>/Scripts/jquery.validate.min.js" type="text/javascript"></script>
    <script src="<%=request.getContextPath()%>/Scripts/jquery.xbox.js" type="text/javascript"></script>
    <script src="<%=request.getContextPath()%>/Scripts/xutils.js" type="text/javascript"></script>
    <script src="<%=request.getContextPath()%>/Scripts/staticUrl.js" type="text/javascript"></script>
    <!--[if lt IE 9]>
    <script src="<%=request.getContextPath()%>/Scripts/html5.js"></script>
    <![endif]-->
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <meta name="renderer" content="webkit">
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/Content/images/favicon.ico" type="image/x-icon" />
    <style>
        /*邮件个数提示样式*/
        .unreadtip {
            height: 16px;
            width: 16px;
            border-radius: 16px;
            display: inline-block;
            text-align: center;
            font-size: 0.1em;
            color: #fff;
            background: red;
            position: relative;
            top: -8px;
            right: 8px;
            margin-left: auto;
            margin-top: -5px;
        }
    </style>
</head>
<body>
<div id="header">
    <div id="header_inner">
        <div id="header_logo" class="fixpng">
        </div>
        <div id="header_nav">
            <a href="<%=request.getContextPath()%>/GoTest/MyCourse" title="我的课程" id="nav_course" class="nav folder"><i class="fixpng"></i><span>我的课程</span></a>
            <a href="<%=request.getContextPath()%>/GoTest/MyTest" title="我的考试" id="nav_task" class="nav pancil"><i class="fixpng"></i><span>我的考试</span></a>
            <a href="<%=request.getContextPath()%>/Message/Index?manager=False" title="站内信" id="nav_letter" class="nav msg"><i class="fixpng"></i><span>站内信</span></a>
            <a href="<%=request.getContextPath()%>/Account" title="个人信息" id="nav_info" class="nav user"><i class="fixpng"></i><span>个人信息</span></a>
            <div class="clearfix"></div>
        </div>
        <div id="user_actions">
            <span id="user_info">罗伟斌</span>
            <a href="<%=request.getContextPath()%>/" id="cmd_logout" title="退出系统">
                <!--[if IE 6]>
                <div style="height:100%; width:100%;"></div>
                <![endif]-->
            </a>
            <span class="clearfix"></span>
        </div>
        <div class="clearfix">
        </div>
    </div>
</div>
<div id="wrapper">


    <link href="<%=request.getContextPath()%>/Content/account.css" rel="stylesheet" type="text/css" />
    <script src="<%=request.getContextPath()%>/Scripts/jquery.validate.min.js" type="text/javascript"></script>
    <script src="<%=request.getContextPath()%>/Scripts/jquery.validate.unobtrusive.min.js" type="text/javascript"></script>

    <div class="f-wrapper">
        <div id="tabs" style="border: none;">
            <ul style="border: none; border-bottom: 1px solid #ccc; background: #fff; -moz-border-radius: 0/*{cornerRadius}*/; -webkit-border-radius: 0/*{cornerRadius}*/; border-radius: 0/*{cornerRadius}*/;">
                <li><a href="#tabs-1">基本资料</a></li>
                <li><a href="#tabs-2">安全设置</a></li>
                <li><a href="#tabs-3">头像设置</a></li>
            </ul>
            <div id="tabs-1">
                <form action="/Account/Edit?m=1" method="post"><div class="feed-hd span30" style="line-height: 30px; font-size: 14px;">
                    基本资料
                </div>
                    <table class="f-tbl">
                        <tr>
                            <th class="fixed">
                                <label class="text-bold">
                                    登录帐号：</label>
                            </th>
                            <td colspan="3">
                                2017212212069
                            </td>
                        </tr>
                        <tr>
                            <th class="fixed">
                                <label class="text-bold">
                                    <em>*</em>真实姓名：</label>
                            </th>
                            <td colspan="3">
                                <input type="text" class="f-textbox f-fade" id="RealName" name="RealName" value="罗伟斌" maxlength="10" data-val="true" data-val-required="该项必填" />
                                <span class="field-validation-valid" data-valmsg-for="RealName" data-valmsg-replace="true"></span>
                            </td>
                        </tr>

                        <tr>
                            <th class="fixed">
                                <label class="text-bold">性别：</label>
                            </th>
                            <td colspan="3">
                                <input name="Sex" id="Gender_1" type="radio" value="男" checked /><label>男</label>&nbsp;&nbsp;&nbsp;&nbsp;
                                <input name="Sex" id="Gender_2" type="radio" value="女"  /><label>女</label>
                            </td>
                        </tr>

                    </table>
                    <div class="feed-hd span30" style="line-height: 30px; font-size: 14px;">
                        联系方式
                    </div>
                    <table class="f-tbl">
                        <tr>
                            <th class="fixed">
                                <label class="text-bold">
                                    手机号码：</label>
                            </th>
                            <td colspan="3">
                                <input type="text" class="f-textbox f-fade" id="Mobile" name="Mobile" maxlength="11" data-val="true" data-val-number="数字" />
                                <span class="field-validation-valid" data-valmsg-for="Mobile" data-valmsg-replace="true"></span>
                            </td>
                        </tr>
                        <tr>
                            <th class="fixed">
                                <label class="text-bold">
                                    Email：</label>
                            </th>
                            <td colspan="3">
                                <input type="text" class="f-textbox f-fade" id="Email" name="Email" maxlength="30" data-val="true" data-val-email="请填写正确的邮箱地址"  style="width:350px;" />
                                <span class="field-validation-valid" data-valmsg-for="Email" data-valmsg-replace="true"></span>
                                <p class="help-block">忘记密码时使用的邮箱</p>
                            </td>
                        </tr>
                        <tr>
                            <th class="fixed">
                                <label class="text-bold">
                                    通信地址：</label>
                            </th>
                            <td>
                                <input type="text" class="f-textbox f-fade" id="Address" name="Address" maxlength="100" style="width:350px;" />
                            </td>
                            <th class="fixed">
                                <label class="text-bold">
                                    邮编：</label>
                            </th>
                            <td>
                                <input type="text" class="f-textbox f-fade f-number" id="Zip" name="Zip" maxlength="6" data-val="true" data-val-number="数字" />
                                <span class="field-validation-valid" data-valmsg-for="Zip" data-valmsg-replace="true"></span>
                            </td>
                        </tr>
                        <tr>
                            <th class="fixed">
                                <label class="text-bold">
                                    Q Q：</label>
                            </th>
                            <td colspan="3">
                                <input type="text" class="f-textbox f-fade" id="Property05" name="Property05" maxlength="15" data-val="true" data-val-number="数字" />
                                <span class="field-validation-valid" data-valmsg-for="Property05" data-valmsg-replace="true"></span>
                            </td>
                        </tr>

                    </table>
                    <div style="margin: 15px 0 20px 120px;">
                        <button id="cmd_submit" type="submit" class="button blue f-button-h30">
                            <strong>修改好了，保存</strong>
                        </button>
                    </div>
                </form>        </div>
            <div id="tabs-2">
                <form id="form_safe" action="javascript:;">
                    <div class="feed-hd span30" style="line-height: 30px; font-size: 14px;">
                        密码修改
                    </div>
                    <table class="f-tbl">
                        <tr>
                            <th class="fixed">
                                <label class="text-bold">
                                    <em>*</em> 原密码：</label>
                            </th>
                            <td>
                                <input type="password" class="f-textbox f-fade w250" id="OldPassword" name="OldPassword"
                                       maxlength="32" data-val="true" data-val-required="该项必填" />
                                <span class="field-validation-valid" data-valmsg-for="OldPassword" data-valmsg-replace="true"></span>
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <th class="fixed">
                                <label class="text-bold">
                                    <em>*</em> 新密码：</label>
                            </th>
                            <td>
                                <input type="password" class="f-textbox f-fade w250" id="NewPassword" name="NewPassword"
                                       maxlength="32" data-val="true" data-val-length="密码 必须至少包含 6 个字符。" data-val-length-max="60" data-val-length-min="6" data-val-required="该项必填" />
                                <span class="field-validation-valid" data-valmsg-for="NewPassword" data-valmsg-replace="true"></span>
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <th class="fixed">
                                <label class="text-bold">
                                    <em>*</em> 确认密码：</label>
                            </th>
                            <td>
                                <input data-val="true" class="f-textbox f-fade w250" data-val-equalto="密码和确认密码不匹配。"
                                       data-val-equalto-other="*.NewPassword" id="ConfirmPassword" name="ConfirmPassword"
                                       type="password">
                                <span class="field-validation-valid" data-valmsg-for="ConfirmPassword" data-valmsg-replace="true"></span>
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <th class="fixed">&nbsp;
                            </th>
                            <td>
                                <button id="cmd_pwd_submit" type="submit" class="f-button f-button-blue f-button-h30">
                                    <strong>修改好了，保存</strong>
                                </button>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
            <div id="tabs-3">
                <div class="avatar-feed">
                    <div class="avatar-upload-container">
                        <div class="avatar-upload">
                            <link href="<%=request.getContextPath()%>/Content/uploadify/uploadify.css" rel="stylesheet" type="text/css" />
                            <script type="text/javascript" src="<%=request.getContextPath()%>/Content/uploadify/swfobject.js"></script>
                            <script type="text/javascript" src="<%=request.getContextPath()%>/Content/uploadify/jquery.uploadify.v2.1.4.min.js"></script>
                            <div id="upload_feed">
                                <input type="hidden" id="file_upload_proxy" name="fileFullPath" />
                                <input type="file" id="file_upload" name="file_upload" />
                            </div>
                            <script type="text/javascript">
                                function toObject(json) {
                                    eval("var o=" + json);
                                    return o;
                                }
                                $(function () {
                                    $('#file_upload').uploadify({
                                        'uploader': '/Content/uploadify/uploadify.swf?v=' + (new Date()).getTime(),
                                        'script': '/Account/UploadAvatar/',
                                        'cancelImg': '/Content/uploadify/cancel.png',
                                        'auto': true,
                                        'multi': false,
                                        'wmode': 'transparent',
                                        'buttonImg': '/Content/uploadify/btn_answer.png',
                                        'width': 120,
                                        'height': 25,
                                        'fileExt': '*.jpg;*.jpeg;*.gif;*.png;',
                                        'fileDesc': '*.jpg;*.jpeg;*.gif;*.png;',
                                        'sizeLimit': 1024 * 1024 * 10, /*10M*/
                                        'scriptData': { 'folderName': 'avatar' },

                                        'onComplete': function (event, ID, fileObj, response, data) {
                                            if (response == "") {
                                                alert("上传失败！");
                                            } else {
                                                var entity = toObject(response);
                                                $("#file_upload_proxy").val(entity.formVal);
                                                uploadCallback(fileObj, entity.preview, data);
                                            }
                                        },
                                        onError: function (event, queueID, fileObj) {
                                            alert("文件:" + fileObj.name + " 上传失败");
                                        }
                                    });
                                });
                            </script>

                        </div>
                        <div class="avatar-upload-tips">
                            1. 点击“点击浏览文件”按钮，浏览到自己的照片。<br />
                            2. 点击“上传”按钮上传照片。<br />
                            3. 查看头像预览效果。<br />
                            4. 支持上传10M内的JPG、GIF或PNG文件。
                        </div>
                        <div class="clear"></div>
                    </div>

                    <div class="feed-hd span30" style="line-height: 30px; font-size: 14px;">头像预览</div>
                    <div class="avatar-edit-grid">
                        <div class="col col-1">
                            <div class="hd">
                                主页头像（128 X 128）：
                            </div>
                            <div class="bd">
                                <img id="img128" alt="头像预览" width="128" height="128" src="<%=request.getContextPath()%>/Content/images/avatar_default.gif">
                            </div>
                        </div>
                        <div class="col col-2">
                            <div class="hd">
                                64 X 64：
                            </div>
                            <div class="bd">
                                <img id="img64" alt="头像预览" width="64" height="64" src="<%=request.getContextPath()%>/Content/images/avatar_default.gif">
                            </div>
                        </div>
                        <div class="col col-3">
                            <div class="hd">
                                32 X 32：
                            </div>
                            <div class="bd">
                                <img id="img32" alt="头像预览" width="32" height="32" src="/content/images/avatar_default.gif">
                            </div>
                        </div>

                        <div class="clear">
                        </div>
                    </div>
                    <div class="avatar-tips hide">
                        <p>觉得不好？再上传另外一张试试吧。</p>
                    </div>
                    <div class="avatar-edit-actions hide">
                        <button id="cmd_avatar_submit" type="button" class="f-button f-button-blue f-button-h30">
                            <strong>这张好，保存</strong>
                        </button>
                        <button id="cmd_avatar_cancel" type="button" class="f-button f-button-h30">
                            <strong>重置</strong>
                        </button>
                    </div>
                    <div class="clear">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        ///文件上传回调函数。
        function uploadCallback(fileObj, response, data) {
            //填写返回信息
            $(".avatar-tips,.avatar-edit-actions").show();
            $("img[id^='img']").attr('src', response);
        }

        $(function () {
            $("#tabs").tabs();

            $("#cmd_avatar_cancel").click(function () {
                $.post('/Account/MyAvatar', { tail: new Date().getTime() }, function (data) {
                    if (data.Success) {
                        $("#fileFullPath").val('');
                        $("img[id^='img']").attr('src', data.Content);
                        $(".avatar-tips,.avatar-edit-actions").hide();
                    } else {
                        $.alert("重置失败！<br/>" + data.ErrorMessage + "<br/>请刷新页面。");
                    }
                });
            });
            $("#cmd_avatar_submit").click(function () {
                $.post('/Account/SaveAvatar', { fileName: $("#file_upload_proxy").val(), tail: new Date().getTime() }, function (data) {
                    if (data.Success) {
                        $.alert("保存成功!");
                        $(".avatar-tips,.avatar-edit-actions").hide();
                        $('#user_info_face').attr('src', data.Content);
                        if (window.top && window.top != window.self) {
                            window.top.$('#user_info_face').attr('src', data.Content);
                        }
                    } else {
                        $.alert("保存失败！<br/>" + data.ErrorMessage + "<br/>请刷新页面。");
                    }
                });
            });
            /* 表单提交前将元素的值准备好 */
            $("form").submit(function () {
                var $form = $(this);
                $(":input[data-val-ref-element]", $form).each(function () {
                    $(this).val($($(this).attr("data-val-ref-element")).val());
                });
                $(":input[data-val-ref-elements]", $form).each(function () {
                    var $this = $(this);
                    $($this.attr("data-val-ref-elements")).each(function () {
                        if ($(this).is(':visible') && $(this).val() != 'invalid')
                            $this.val($(this).val());
                    });
                });
                $(":input[data-query-type]", $form).each(function () {
                    if ($(this).val() != "") {
                        $(this).val($(this).attr("data-query-type") + $(this).val());
                    }
                });
            });
            $("#form_safe").submit(function () {
                if ($('.input-validation-error', this).size() == 0) {
                    $.post('/Account/SaveSafe', $("#form_safe").serialize(), function (data) {
                        if (data.Success) {
                            $.alert("密码修改成功， 请牢记您的密码!");
                            $("#form_safe")[0].reset();
                        } else {
                            $.alert("保存失败！<br/>" + data.ErrorMessage);
                        }
                    });
                }
                return false;
            });

            $('#Birthday').datepicker({
                onSelect: function (dateText, inst) {
                    $("form").validate().element('#' + inst.id);
                }
            });

        });
    </script>

</div>
<script type="text/javascript">
    (function ($) {
        $(document.body).ajaxError(function (event, request, settings, ex) {
            if (request.status == 900) {
                $.alert("由于您长时间没有与页面交互，会话已经过期。 需要重新登录系统！ ", function () {
                    window.location = '/account/logoff';
                    return false;
                });
            } else {
                if (request.status == 12031) {
                    //connection reset
                } else {
                    alert("出错页面: " + settings.url + ": " + request.status + ", " + ex);
                }
            }
        });
    })(jQuery);

</script>
<script src="<%=request.getContextPath()%>/Scripts/jquery.unobtrusive-ajax.js" type="text/javascript"></script>
<script type="text/javascript">
    $(function () {
        if ($('#left_nav').size() > 0) {
            $('#left_nav').height($(window).height() - $('#left_nav').offset().top);
            $('#content').height($('#left_nav').height() - 4/*unknow*/);

            $(window).resize(function () {
                $('#left_nav').height($(window).height() - $('#left_nav').offset().top);
                $('#content').height($('#left_nav').height() - 4/*unknow*/);
            });
        } else {
            $('#content').height($(window).height() - $('#content').offset().top - 4);
            $(window).resize(function () {
                $('#content').height($(window).height() - $('#content').offset().top - 4);
            });
        };

        $(".tip span").click(function () {
            $(this).closest('.tip').hide('slow');
        });
        setTimeout(function () {
            $('.tip.autoclose').hide('slow')
        }, 5000);
    });

    $.post('/Message/UnreadedMsg', function (data) {
        if (data > 0) {
            $('#nav_letter').append('<span class="unreadtip">' + data + '</span>');
        }
    });
</script>
</body>
</html>



