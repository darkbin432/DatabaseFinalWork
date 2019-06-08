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
    <link href="<%=request.getContextPath()%>/Content/themes/base/jquery.ui.all.css" rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/Content/Site.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet"
          href="<%=request.getContextPath()%>/Content/plugins/Font-Awesome-4.4.0/css/font-awesome.min.css">
    <link href="<%=request.getContextPath()%>/Content/front.css" rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/Content/breadcrumb.css" rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/Content/fileicon.css" rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/Content/component.css" rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/Content/form.css" rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/Content/misc.css" rel="stylesheet" type="text/css"/>
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
    <meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
    <meta name="renderer" content="webkit">
    <link rel="shortcut icon" href="/Content/images/favicon.ico" type="image/x-icon"/>

</head>
<body>
<%@ include file="../header.jsp" %>
<div id="header">
    <div id="header_inner">
        <div id="header_logo" class="fixpng">
        </div>
        <div id="header_nav">
            <a href="<%=request.getContextPath()%>/GoTest/MyCourse" title="我的课程" id="nav_course" class="nav folder"><i
                    class="fixpng"></i><span>我的课程</span></a>
            <a href="<%=request.getContextPath()%>/GoTest/MyTest" title="我的考试" id="nav_task" class="nav pancil"><i
                    class="fixpng"></i><span>我的考试</span></a>
            <a href="<%=request.getContextPath()%>/Message/Index?manager=False" title="站内信" id="nav_letter"
               class="nav msg"><i class="fixpng"></i><span>站内信</span></a>
            <a href="<%=request.getContextPath()%>/Account" title="个人信息" id="nav_info" class="nav user"><i
                    class="fixpng"></i><span>个人信息</span></a>
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

    <div class="breadcrumb-header-front">
        <span class="breadcrumb-item">当前位置：我的课程</span>
    </div>
    <div class="teacher-button hidden">
        <button id="addCourse">添加课程</button>
        <button id="addProblem">添加题目</button>
    </div>
    <div class="course-out main">
        <div class="course-content">

        </div>
    </div>
    <br>
    <div class="teacher" style="display: none">
        <label>课程名称： <input type="text" id="courseName"></label>
        <br>
        <br>
        <label>课程简介： <input type="text" id="courseDescription"></label>
        <br>
        <br>
        <label>添加学生： <input type="text" id="courseStu"></label>
        <button id="addStu">添加</button>
        <div id="selectedStu">

        </div>
        <br>
        <br>
        <button id="submitCourse">提交</button>
    </div>
    <div class="problem" style="display: none">
        <label>题面： <input type="text" id="problemface"></label>
        <br>
        <br>
        <label>A. <input type="text" id="choose1"></label>
        <br>
        <br>
        <label>B. <input type="text" id="choose2"></label>
        <br>
        <br>
        <label>C. <input type="text" id="choose3"></label>
        <br>
        <br>
        <label>D. <input type="text" id="choose4"></label>
        <br>
        <br>
        <label>答案(填1/2/3/4): <input type="text" id="answer"></label>
        <br>
        <br>
        <button id="submitProblem">提交</button>
    </div>


</div>
<script type="text/javascript">
    jQuery(function ($) {
        $("#user_info").html(user.name);
    })
</script>

<script type="text/javascript">
    jQuery(function ($) {
        var addStus = [];

        if (user.type == 1) {
            $(".teacher-button").css("display", "block");
        } else {
            $(".teacher-button").css("display", "none");
        }

        $("#addCourse").click(function () {
            $("#courseName").val("");
            $("#courseDescription").val("");
            $("#courseStu").val("");
            $("#selectedStu").html("");
            $(".main").css("display", "none");
            $(".problem").css("display", "none");
            $(".teacher").css("display", "block");
        })
        $("#addProblem").click(function () {
            $("#problemface").val("");
            $("#choose1").val("");
            $("#choose2").val("");
            $("#choose3").val("");
            $("#choose4").val("");
            $("#answer").val("");
            $(".main").css("display", "none");
            $(".teacher").css("display", "none");
            $(".problem").css("display", "block");
        })

        $("#addStu").click(function () {
            addStus.push($("#courseStu").val());
            var html = "";
            for (var i = 0; i < addStus.length; ++i) {
                html += addStus[i] + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;×<br>";
            }
            $("#selectedStu").html(html);
        })

        $("#submitCourse").click(function () {
            var courseName = $("#courseName").val();
            var courseDescription = $("#courseDescription").val();
            console.log(addStus);
            var addStu = "";
            for (var i = 0; i < addStus.length; ++i) {
                addStu += addStus[i] + ";";
            }
            $.ajax({
                type: "POST",
                url: rootPath + "/api/addCourse",
                dataType: "json",
                async: false,
                data: {
                    teacherId:user.id,
                    title: courseName,
                    description: courseDescription,
                    stus: addStu,
                    status:1,
                },
                success: function (data) {
                    if (data.status === 200) {
                        alert("添加成功");
                        window.location = rootPath + "/GoTest/MyCourse";
                    }
                },
                error: function () {
                    alert("服务器请求失败")
                }
            })
        })

        $("#submitProblem").click(function () {
            $.ajax({
                type: "POST",
                url: rootPath + "/api/addProblem",
                dataType: "json",
                async: false,
                data: {
                    problemFace: $("#problemface").val(),
                    problemChoose1: $("#choose1").val(),
                    problemChoose2: $("#choose2").val(),
                    problemChoose3: $("#choose3").val(),
                    problemChoose4: $("#choose4").val(),
                    answer: $("#answer").val(),
                    status:1,
                },
                success: function (data) {
                    if (data.status === 200) {
                        alert("添加成功");
                        window.location = rootPath + "/GoTest/MyCourse";
                    }
                },
                error: function () {
                    alert("服务器请求失败")
                }
            })
        })

        $.ajax({
            type: "POST",
            url: rootPath + "/api/getCourses",
            dataType: "json",
            async: false,
            data: {
                id: user.id,
                teacherId: user.id,
                type: user.type,
            },
            success: function (data) {
                var html = "";
                for (var i = 0; i < data.data.length; ++i) {
                    html += "<div class=\"course-item clearfix\">\n" +
                        "                <div class=\"course-image-Simulation\" style=\"background-color: rgb(51, 153, 51)\">\n" +
                        "                    " + data.data[i].title + "\n" +
                        "                </div>\n" +
                        "                <div class=\"course-info\">\n" +
                        "                    <div class=\"course-title\">\n" +
                        "                        <span>" + data.data[i].title + "</span>\n" +
                        "                    </div>\n" +
                        "                    <div class=\"course-memo\">\n" + data.data[i].description +
                        "                    </div>\n" +
                        "                    <div class=\"course-teacher\">\n" +
                        "                        <span>" + data.data[i].teacherName + "</span>\n" +
                        "                        &nbsp;&nbsp;&nbsp;\n" +
                        "                        <img src='" + rootPath + "/Content/images/newframe/letter.png' style=\"float: left\">\n" +
                        "                    </div>\n" +
                        "                </div>\n" +
                        "                <div class=\"course-learn\">\n" +
                        "                    <a href='" + rootPath + "/GoTest/MyStudy?id=" + data.data[i].id + "' class=\"button blue r2\">立即学习</a>\n" +
                        "                </div>\n" +
                        "            </div>";
                }
                $(".course-out .course-content").html(html);
            },
            error: function () {
                alert("服务器请求失败")
            }
        })


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
<%--<script type="text/javascript">--%>
<%--$(function () {--%>
<%--if ($('#left_nav').size() > 0) {--%>
<%--$('#left_nav').height($(window).height() - $('#left_nav').offset().top);--%>
<%--$('#content').height($('#left_nav').height() - 4/*unknow*/);--%>

<%--$(window).resize(function () {--%>
<%--$('#left_nav').height($(window).height() - $('#left_nav').offset().top);--%>
<%--$('#content').height($('#left_nav').height() - 4/*unknow*/);--%>
<%--});--%>
<%--} else {--%>
<%--$('#content').height($(window).height() - $('#content').offset().top - 4);--%>
<%--$(window).resize(function () {--%>
<%--$('#content').height($(window).height() - $('#content').offset().top - 4);--%>
<%--});--%>
<%--};--%>

<%--$(".tip span").click(function () {--%>
<%--$(this).closest('.tip').hide('slow');--%>
<%--});--%>
<%--setTimeout(function () {--%>
<%--$('.tip.autoclose').hide('slow')--%>
<%--}, 5000);--%>
<%--});--%>

<%--// $.post('/Message/UnreadedMsg', function (data) {--%>
<%--//     if (data > 0) {--%>
<%--//         $('#nav_letter').append('<span class="unreadtip">' + data + '</span>');--%>
<%--//     }--%>
<%--// });--%>
<%--</script>--%>
</body>
</html>



