<%--
  Created by IntelliJ IDEA.
  User: 斌
  Date: 2019/5/17
  Time: 10:56
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
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <meta name="renderer" content="webkit">
    <title>用户登录</title>
    <script>
        var sitePath = '/index';
    </script>
    <link href="<%=request.getContextPath()%>/Content/themes/base/jquery.ui.all.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/Content/plugins/Font-Awesome-4.4.0/css/font-awesome.min.css">
    <link href="<%=request.getContextPath()%>/Content/Site.css" rel="stylesheet" type="text/css" />
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
    <script src="<%=request.getContextPath()%>/Scripts/json.js" type="text/javascript"></script>
    <!--[if lt IE 9]>
    <script src="<%=request.getContextPath()%>/Scripts/html5.js"></script>
    <![endif]-->

</head>
<body>

<link href="<%=request.getContextPath()%>/Content/account.css" rel="stylesheet" />
<script src="<%=request.getContextPath()%>/Scripts/jquery.validate.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/Scripts/jquery.validate.unobtrusive.min.js" type="text/javascript"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/Content/fancybox/jquery.mousewheel-3.0.4.pack.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/Content/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/Content/fancybox/jquery.fancybox-1.3.4.css" media="screen" />

<script type="text/javascript">
    if (window.top && window.top != window.self) {
        window.top.location = self.location;
    }
</script>
<div class="l-top">
    <div class="l-topinner">
        <div class="logo">
            <img src="<%=request.getContextPath()%>/Content/images/logon/logo.png" />
        </div>
        <div class="l-nav">
        </div>
    </div>
</div>
<div class="l-content ">
    <div class="top">
        <div class="content-tital">
            通用实践评价平台
        </div>
        <div class="content-titalinfo">
            iDo是一个集作业、实验、模拟练习、测评、考务管理、题库管理于一体的在线实践评价平台
        </div>
        <div class="denglu">
            <div class="validation-summary-valid" data-valmsg-summary="true"><span>登录失败.</span>
                <ul><li style="display:none"></li>
                </ul></div>
            <form action="<%=request.getContextPath()%>/api/login" method="post"><input name="__RequestVerificationToken" type="hidden" value="9t3EUcRGH0Mkl5z8qoxI-RCMOxpX_7C4Thpzl_D2C9ZBSY9uDxiD4qEKb1ijR6gSOYxnOeOAi5vmfuiAMt4GZdpDnQniGCnr2BpDx4PPbBJDqcMS_HSeAvvndHPiKbBXNkzzyg2" />                <div class="welcome">欢迎您的登录</div>
                <div class="shuru">
                    <input type="text" id="UserName" name="username" class="shuru_style" data-val="true" data-val-required="必填"  placeholder="请输入账号" />
                    <span class="field-validation-valid" data-valmsg-for="UserName" data-valmsg-replace="true"></span>
                </div>
                <div class="shuru">
                    <input type="password" id="Password" name="password" class="shuru_style01" data-val="true" data-val-required="必填" placeholder="请输入密码" />
                    <span class="field-validation-valid" data-valmsg-for="Password" data-valmsg-replace="true"></span>
                </div>
                <div class="shuru">
                    <input type="image" src="<%=request.getContextPath()%>/Content/images/logon/denglu.png" style="border:none;float: left;" />
                </div>
                <div class="clearfix">
                    <a style="color: #999; float:right;" href="<%=request.getContextPath()%>/Account/forgot">忘记密码?</a>
                </div>
            </form>        </div>
    </div>
    <div class="product">
        共建共享在线精品课程
    </div>
    <div class="productinfo">
        <div class="productinfo-item">
            <div class="productinfo-item-img">
                <img src="<%=request.getContextPath()%>/Content/images/newframe/course-daji.png" />
            </div>
            <div class="productinfo-item-name">大学计算机基础</div>

        </div>
        <div class="productinfo-item">
            <div class="productinfo-item-img">
                <img src="<%=request.getContextPath()%>/Content/images/newframe/course-Clanuage.png" />
            </div>
            <div class="productinfo-item-name">C程序设计</div>

        </div>
        <div class="productinfo-item">
            <div class="productinfo-item-img">
                <img src="<%=request.getContextPath()%>/Content/images/newframe/course-Java.png" />
            </div>
            <div class="productinfo-item-name">Java程序设计</div>

        </div>
        <div class="productinfo-item">
            <div class="productinfo-item-img">
                <img src="<%=request.getContextPath()%>/Content/images/newframe/course-Python.png" />
            </div>
            <div class="productinfo-item-name">Python程序设计</div>

        </div>
        <div class="productinfo-item">
            <div class="productinfo-item-img">
                <img src="<%=request.getContextPath()%>/Content/images/newframe/course-aoa.png" />
            </div>
            <div class="productinfo-item-name">高级Office</div>

        </div>

        <div class="productinfo-item">
            <div class="productinfo-item-img">
                <img src="<%=request.getContextPath()%>/Content/images/newframe/course-c.png" />
            </div>
            <div class="productinfo-item-name">C++程序设计</div>

        </div>
        <div class="productinfo-item">
            <div class="productinfo-item-img">
                <img src="<%=request.getContextPath()%>/Content/images/newframe/course-vb.png" />
            </div>
            <div class="productinfo-item-name">VB程序设计</div>

        </div>
        <div class="productinfo-item">
            <div class="productinfo-item-img">
                <img src="<%=request.getContextPath()%>/Content/images/newframe/course-cam.png" />
            </div>
            <div class="productinfo-item-name">计算机原理</div>

        </div>
        <!--
        <div class="productinfo-item">
            <div class="productinfo-item-img">
                <img src="<%=request.getContextPath()%>/Content/images/newframe/course-add.png" />
            </div>
            <div class="productinfo-item-name">更多开设中</div>

        </div>
            -->
    </div>
    <div class="footer">
        杭州国际服务工程学院  数据库原理课程大作业  在线教学评测系统<br />
        v1.0 build at 20190522
    </div>
</div>
<script type="text/javascript">

    $(function () {

        $("a.iframe").fancybox({
            'autoScale': false,
            'transitionIn': 'none',
            'transitionOut': 'none',
            'type': 'iframe',
            'titleShow': false
        });

        $("#cmd_next").live('click', function () {
            $('#PageIndex').val(parseInt($("#PageIndex").val()) + 1);
            $.get('/Account/NoticeList', { PageIndex: $('#PageIndex').val() }, function (data) {
                $(data).appendTo('.conttent01');
            });
            $(this).remove();
        });

    });
</script>

<script type="text/javascript">
    (function ($) {
        $(document.body).ajaxError(function (event, request, settings, ex) {
            if (request.status == 900) {
                $.alert("由于您长时间没有与页面交互，会话已经过期。 需要重新登录系统！ ", function () {
                    window.location = '/account/logoff';
                    return false;
                });
            } else {
                if (request.status == 4004) {
                    //不管
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
        $(".tip span").click(function () {
            $(this).closest('.tip').hide('slow');
        });
        setTimeout(function () {
            $('.tip.autoclose').hide('slow')
        }, 4000);
    });
</script>

</body>
</html>

