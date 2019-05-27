<%--
  Created by IntelliJ IDEA.
  User: 斌
  Date: 2019/5/27
  Time: 15:58
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
    <title>我的课程</title>
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
<%@ include file="../header.jsp" %>
<div id="header">
    <div id="header_inner">
        <div id="header_logo" class="fixpng">
        </div>
        <div id="header_nav">
            <a href="<%=request.getContextPath()%>/GoTest/MyCourse" title="我的课程" id="nav_course" class="nav folder"><i class="fixpng"></i><span>我的课程</span></a>
            <a href="<%=request.getContextPath()%>/GoTest/MyTest" title="我的考试" id="nav_task" class="nav pancil"><i class="fixpng"></i><span>我的考试</span></a>
            <a href="<%=request.getContextPath()%>/Message/Index?manager=False" title="站内信" id="nav_letter" class="nav msg"><i class="fixpng"></i><span>站内信</span></a>
            <a href="<%=request.getContextPath()%>/Account/Edit" title="个人信息" id="nav_info" class="nav user"><i class="fixpng"></i><span>个人信息</span></a>
            <div class="clearfix"></div>
        </div>
        <div id="user_actions">
            <span id="user_info"></span>
            <a href="<%=request.getContextPath()%>/logout" id="cmd_logout" title="退出系统">
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

    <script type="text/javascript" src="<%=request.getContextPath()%>/Content/fancybox/jquery.mousewheel-3.0.4.pack.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/Content/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/Content/fancybox/jquery.fancybox-1.3.4.css" media="screen" />
    <div class="breadcrumb-header-front">
        <span class="breadcrumb-item">当前位置：</span>
        <a href="MyCourse" class="breadcrumb-item">我的课程</a>
        <span class="breadcrumb-arrow">></span>
        <span class="breadcrumb-item">Java程序设计</span>
    </div>
    <div class="learn-body">
        <div class="learn-info">
            <div class="learn-icon">
                <img src="<%=request.getContextPath()%>/Content/images/newframe/course-info.png" />&nbsp;&nbsp;<span>课程信息</span>
            </div>
            <div class="learn-line"></div>
            <div class="learn-content">本课程是软件工程专业、计算机科学与技术专业的选修课课程。课程主要介绍Java的语法、类的定义、对象的创建与使用、接口、继承、多态、异常处理等，逐渐帮助学生建立起面向对象的思想。介绍JavaFX程序的基本结构、JavaFX的常用组件和事件驱动编程。介绍列表、泛型、映射和集合等数据结构和算法，以及Java的JDBC技术。</div>
        </div>
        <div class="learn-msg">
            <div class="learn-icon">
                <img src="<%=request.getContextPath()%>/Content/images/newframe/course-notice.png" />&nbsp;&nbsp;消息通知
            </div>
            <div class="learn-line"></div>
            <div class="learn-content">
                <ul>
                    <li>
                        <a class="iframe" href="/Notice/Details/121">12.7综合实验通知</a>
                        <span>2018-12-04</span>
                    </li>
                </ul>
            </div>
        </div>
        <div class="learn-details">
            <div class="learn-title">
                <span class="learn-study">我的学习</span>
            </div>
            <div class="learn-item">
                <img src="<%=request.getContextPath()%>/Content/images/newframe/course-resource.png" />
                <span class="learn-name">学习课件</span>
                <span class="learn-resource">共 57 个</span>
                <span class="learn-button"><a href="/GoTest/MyCourseware?courseId=269" class="button blue r2">查 看</a></span>
            </div>
            <div class="learn-item">
                <img src="<%=request.getContextPath()%>/Content/images/newframe/course-resource.png" />
                <span class="learn-name">学习资料</span>
                <span class="learn-resource">共 31 个</span>
                <span class="learn-button"><a href="/GoTest/MyCourseResource?courseId=269" class="button blue r2">查 看</a></span>
            </div>
            <div class="learn-item">
                <img src="<%=request.getContextPath()%>/Content/images/newframe/course-homework.png" />
                <span class="learn-name">我的作业</span>
                <span class="learn-resource">共 9 个</span>
                <span class="learn-button"><a href="/GoTest/MyHomeWork?courseId=269" class="button blue r2">查 看</a></span>
            </div>
            <div class="learn-item">
                <img src="<%=request.getContextPath()%>/Content/images/newframe/course-mutualjudge.png" />
                <span class="learn-name">互评任务</span>
                <span class="learn-resource">
                共 0 个
            </span>
                <span class="learn-button">
                <a href="/GoMutualJudge/MyJudgeList?courseId=269" class="button blue r2">查 看</a>
            </span>
            </div>
            <div class="learn-item">
                <img src="<%=request.getContextPath()%>/Content/images/newframe/course-experiment.png" />
                <span class="learn-name">我的实验</span>
                <span class="learn-resource">共 10 个</span>
                <span class="learn-button"><a href="/GoTest/MyTask?courseId=269" class="button blue r2">查 看</a></span>
            </div>
            <div class="learn-item">
                <img src="<%=request.getContextPath()%>/Content/images/newframe/course-analogtest.png" />
                <span class="learn-name">模拟练习</span>
                <span class="learn-resource">共 0 个</span>
                <span class="learn-button"><a href="/GoTest/MyExercise?courseId=269" class="button blue r2">查 看</a></span>
            </div>
            <div class="learn-item">
                <img src="<%=request.getContextPath()%>/Content/images/newframe/course-discuss.png" />
                <span class="learn-name">讨论区</span>
                <span class="learn-button"><a href="/Admin/BBS?courseId=269" class="button blue r2">查 看</a></span>
            </div>
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

        });
    </script>

</div>

<script type="text/javascript">
    jQuery(function ($) {
        $("#user_info").html(user.name);
    })
</script>

<script type="text/javascript">
    (function ($) {
        $(document.body).ajaxError(function (event, request, settings, ex) {
            if (request.status == 900) {
                $.alert("由于您长时间没有与页面交互，会话已经过期。 需要重新登录系统！ ", function () {
                    window.location = rootPath + '/logout';
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

