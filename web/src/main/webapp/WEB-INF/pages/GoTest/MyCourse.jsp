<%--
  Created by IntelliJ IDEA.
  User: 斌
  Date: 2019/5/22
  Time: 20:41
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
    <!--[if lt IE 9]>
    <script src="<%=request.getContextPath()%>/Scripts/html5.js"></script>
    <![endif]-->
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <meta name="renderer" content="webkit">
    <link rel="shortcut icon" href="/Content/images/favicon.ico" type="image/x-icon" />
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
            <a href="/GoTest/MyCourse" title="我的课程" id="nav_course" class="nav folder"><i class="fixpng"></i><span>我的课程</span></a>
            <a href="/GoTest/MyTest" title="我的考试" id="nav_task" class="nav pancil"><i class="fixpng"></i><span>我的考试</span></a>
            <a href="/Message/Index?manager=False" title="站内信" id="nav_letter" class="nav msg"><i class="fixpng"></i><span>站内信</span></a>
            <a href="/Account/Edit?m=1" title="个人信息" id="nav_info" class="nav user"><i class="fixpng"></i><span>个人信息</span></a>
            <div class="clearfix"></div>
        </div>
        <div id="user_actions">
            <span id="user_info">罗伟斌</span>
            <a href="/account/LogOff" id="cmd_logout" title="退出系统">
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

    <div class="breadcrumb-header-front">
        <span class="breadcrumb-item">当前位置：我的课程</span>
    </div>
    <div class="course-out">
        <div class="course-content">
            <div class="course-item clearfix">
                <div class="course-image-Simulation" style="background-color: rgb(51, 153, 51)">
                    程序设计基础
                </div>
                <div class="course-info">
                    <div class="course-title">
                        <span>程序设计基础（17-18-1）</span>
                    </div>
                    <div class="course-memo">

                    </div>
                    <div class="course-teacher">
                        <span>胡斌</span>
                        &nbsp;&nbsp;&nbsp;
                        <img src="../..<%=request.getContextPath()%>/Content/images/newframe/letter.png" style="float: left">
                    </div>
                </div>
                <div class="course-learn">
                    <a href="/GoTest/MyStudy?courseId=221" class="button blue r2">立即学习</a>
                </div>
            </div>            <div class="course-item clearfix">
            <div class="course-image-Simulation" style="background-color: rgb(27, 161, 226)">
                Java程序设计
            </div>
            <div class="course-info">
                <div class="course-title">
                    <span>Java程序设计</span>
                </div>
                <div class="course-memo">
                    本课程是软件工程专业、计算机科学与技术专业的选修课课程。课程主要介绍Java的语法、类的定义、对象的创建与使用、接口、继承、多态、异常处理等，逐渐帮助学生建立起面向对象的思想。介绍JavaFX程序的基…
                </div>
                <div class="course-teacher">
                    <span>姚争为</span>
                    &nbsp;&nbsp;&nbsp;
                    <img src="../../Content/images/newframe/letter.png" style="float: left">
                </div>
            </div>
            <div class="course-learn">
                <a href="/GoTest/MyStudy?courseId=269" class="button blue r2">立即学习</a>
            </div>
        </div>            <div class="course-item clearfix">
            <div class="course-image-Simulation" style="background-color: rgb(162, 0, 255)">
                Python程序设计（174_175）
            </div>
            <div class="course-info">
                <div class="course-title">
                    <span>Python程序设计（174_175）</span>
                </div>
                <div class="course-memo">
                    面向无编程基础的学生，以培养程序设计能力为目标，选用Python语言作为描述语言。通过教学，使学生掌握程序设计的基本思想和方法、养成良好的程序设计风格，具有使用Python语言解决实际问题的能力，较熟…
                </div>
                <div class="course-teacher">
                    <span>虞歌</span>
                    &nbsp;&nbsp;&nbsp;
                    <img src="../../Content/images/newframe/letter.png" style="float: left">
                </div>
            </div>
            <div class="course-learn">
                <a href="/GoTest/MyStudy?courseId=367" class="button blue r2">立即学习</a>
            </div>
        </div>            <div class="course-item clearfix">
            <div class="course-image-Simulation" style="background-color: rgb(162, 0, 255)">
                Python程序设计实践（174_175）
            </div>
            <div class="course-info">
                <div class="course-title">
                    <span>Python程序设计实践（174_175）</span>
                </div>
                <div class="course-memo">
                    面向无编程基础的学生，以培养程序设计能力为目标，选用Python语言作为描述语言。通过教学，使学生掌握程序设计的基本思想和方法、养成良好的程序设计风格，具有使用Python语言解决实际问题的能力，较熟…
                </div>
                <div class="course-teacher">
                    <span>虞歌</span>
                    &nbsp;&nbsp;&nbsp;
                    <img src="../../Content/images/newframe/letter.png" style="float: left">
                </div>
            </div>
            <div class="course-learn">
                <a href="/GoTest/MyStudy?courseId=368" class="button blue r2">立即学习</a>
            </div>
        </div>            <div class="course-item clearfix">
            <div class="course-image-Simulation" style="background-color: rgb(27, 161, 226)">
                Python程序设计
            </div>
            <div class="course-info">
                <div class="course-title">
                    <span>Python程序设计</span>
                </div>
                <div class="course-memo">

                </div>
                <div class="course-teacher">
                    <span>虞剑波</span>
                    &nbsp;&nbsp;&nbsp;
                    <img src="../../Content/images/newframe/letter.png" style="float: left">
                </div>
            </div>
            <div class="course-learn">
                <a href="/GoTest/MyStudy?courseId=412" class="button blue r2">立即学习</a>
            </div>
        </div>    </div>
    </div>



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



