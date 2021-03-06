<%--
  Created by IntelliJ IDEA.
  User: 斌
  Date: 2019/5/29
  Time: 20:04
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
    <title>我的作业</title>
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
    <%--    <script src="<%=request.getContextPath()%>/Scripts/xutils.js" type="text/javascript"></script>--%>
    <script src="<%=request.getContextPath()%>/Scripts/staticUrl.js" type="text/javascript"></script>
    <!--[if lt IE 9]>
    <script src="<%=request.getContextPath()%>/Scripts/html5.js"></script>
    <![endif]-->
    <meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
    <meta name="renderer" content="webkit">
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/Content/images/favicon.ico" type="image/x-icon"/>
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
            <a href="<%=request.getContextPath()%>/GoTest/MyCourse" title="我的课程" id="nav_course" class="nav folder"><i
                    class="fixpng"></i><span>我的课程</span></a>
            <a href="<%=request.getContextPath()%>/GoTest/MyTest" title="我的考试" id="nav_task" class="nav pancil"><i
                    class="fixpng"></i><span>我的考试</span></a>
            <a href="/Message/Index?manager=False" title="站内信" id="nav_letter" class="nav msg"><i
                    class="fixpng"></i><span>站内信</span></a>
            <a href="<%=request.getContextPath()%>/Account" title="个人信息" id="nav_info" class="nav user"><i
                    class="fixpng"></i><span>个人信息</span></a>
            <div class="clearfix"></div>
        </div>
        <div id="user_actions">
            <span id="user_info">罗伟斌</span>
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
        <span class="breadcrumb-item">当前位置：</span>
        <a href="MyCourse" class="breadcrumb-item">我的课程</a>
        <span class="breadcrumb-arrow">></span>
        <a id="courseLink" href="" class="breadcrumb-item"></a>
        <span class="breadcrumb-arrow">></span>
        <span class="breadcrumb-item">我的作业</span>
    </div>
    <div class="teacher-button">
        <button id="addExam">添加作业（考试）</button>
    </div>
    <div class="layout-relative main">
        <div id="loading" class="loading">正在加载数据…</div>
        <div id="c-grid-ajax" class="paper-list">
            <div class="paper clearfix">
                <div class="paper-col tit">
                    <div class="name">
                        计算机174_175_作业14(文件)
                    </div>
                    <div class="muted clearfix">
                        <div class="muted-item">老师：虞歌</div>
                        <div class="muted-item">开始时间：2019-05-24</div>
                        <div class="muted-item">截止时间：2019-05-30</div>
                    </div>
                </div>
                <div class="paper-col sc">
                </div>
                <div class="paper-col actions">
                    <a class="button blue r2" href="<%=request.getContextPath()%>/GoTest/TestOne?id=1">进入答题</a></div>
            </div>
            <div class="paper clearfix">
                <div class="paper-col tit">
                    <div class="name">
                        计算机174_175_作业13(异常处理)
                    </div>
                    <div class="muted clearfix">
                        <div class="muted-item">老师：虞歌</div>
                        <div class="muted-item">开始时间：2019-05-17</div>
                        <div class="muted-item">截止时间：2019-05-23</div>
                    </div>
                </div>
                <div class="paper-col sc">
                    成绩：<span class="text-green">88.3</span>
                </div>
                <div class="paper-col actions">
                    <a class="button blue r2" href="/Output/ViewOne/237064" target="_blank">查看</a></div>
            </div>

        </div>
    </div>
    <br>
    <div class="teacher" style="display: none">
        <label>标题： <input type="text" id="examTitle"></label>
        <br>
        <br>
        <label>开始时间： <input type="text" id="stn">年<input type="text" id="sty">月<input type="text" id="str">日<input
                type="text" id="sts">：<input type="text" id="stf">：<input type="text" id="stm"></label>
        <br>
        <br>
        <label>结束时间： <input type="text" id="edn">年<input type="text" id="edy">月<input type="text" id="edr">日<input
                type="text" id="eds">：<input type="text" id="edf">：<input type="text" id="edm"></label>
        <br>
        <br>
        <input name="exam" type="radio" value="0" checked/><label>作业</label>&nbsp;&nbsp;&nbsp;&nbsp;
        <input name="exam" type="radio" value="1"/><label>考试</label>
        <br>
        <br>
        <label>添加题目： <input type="text" id="problemId"></label>
        <button id="addPro">添加</button>
        <div id="selectedPro">

        </div>
        <br>
        <br>
        <button id="submitExam">提交</button>
    </div>
    <script type="text/javascript">
        $("#search_form").submit(function () {
            if ($('.sort-key-button.enabled').hasClass('up')) {
                $('#sortKey').val($('.sort-key-button.enabled').attr('data-val-keyname') + ' ASC');
            } else {
                $('#sortKey').val($('.sort-key-button.enabled').attr('data-val-keyname') + ' DESC');
            }

        });

        $('.sort-key-button').click(function () {
            if ($(this).hasClass('enabled')) {
                $(this).toggleClass('up').toggleClass('down');
            } else {
                $('.sort-key-button.enabled').removeClass('enabled');
                $(this).addClass('enabled')
            }
            $("#search_form").submit();
        });
    </script>

</div>

<script type="text/javascript">
    jQuery(function ($) {
        $("#user_info").html(user.name);

        var problemIds = [];

        function getQueryString(name) {
            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
            var r = window.location.search.substr(1).match(reg);
            if (r != null) return unescape(r[2]);
            return null;
        }

        var id = getQueryString("id");

        if (user.type == 1) {
            $(".teacher-button").css("display", "block");
        } else {
            $(".teacher-button").css("display", "none");
        }

        $("#addExam").click(function () {
            $("#examTitle").val("");
            $("#stn").val("");
            $("#sty").val("");
            $("#str").val("");
            $("#sts").val("");
            $("#stf").val("");
            $("#stm").val("");
            $("#edn").val("");
            $("#edy").val("");
            $("#edr").val("");
            $("#eds").val("");
            $("#edf").val("");
            $("#edm").val("");
            $("#selectedPro").html("");
            $(".main").css("display", "none");
            $(".teacher").css("display", "block");
        })

        $("#addPro").click(function () {
            problemIds.push($("#problemId").val());
            var html = "";
            for (var i = 0; i < problemIds.length; ++i) {
                html += problemIds[i] + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;×<br>";
            }
            $("#selectedPro").html(html);
        })

        $("#submitExam").click(function () {
            var beginTime = $("#stn").val() + "-" + $("#sty").val() + "-" + $("#str").val() + " " + $("#sts").val() + ":" + $("#stf").val() + ":00";
            var endTime = $("#edn").val() + "-" + $("#edy").val() + "-" + $("#edr").val() + " " + $("#eds").val() + ":" + $("#edf").val() + ":00";
            var newBeginTime = new Date(beginTime);
            var newEndTime = new Date(endTime);
            var add = "";
            for (var i = 0; i < problemIds.length; ++i) {
                add += problemIds[i] + ";";
            }
            $.ajax({
                type: "POST",
                url: rootPath + "/api/addExam",
                dataType: "json",
                async: false,
                data: {
                    title: $("#examTitle").val(),
                    courseId: id,
                    teacherId: user.id,
                    // beginTime: beginTime,
                    // endTime: endTime,
                    type: $("input[name='exam']:checked").val(),
                    problemIds: add,
                },
                success: function (data) {
                },
                error: function () {
                    alert("服务器请求失败")
                }
            })
        })

        $("#courseLink").attr("href", rootPath + "/GoTest/MyStudy?id=" + id);

        $.ajax({
            type: "POST",
            url: rootPath + "/api/getCourse",
            dataType: "json",
            async: false,
            data: {
                id: id,
            },
            success: function (data) {
                $("#courseLink").text(data.data[0].title);
            },
            error: function () {
                alert("服务器请求失败")
            }
        })

        $.ajax({
            type: "POST",
            url: rootPath + "/api/getExams",
            dataType: "json",
            async: false,
            data: {
                courseId: id,
                userId: user.id,
                type: 0,
                userType: user.type
            },
            success: function (data) {
                var html = "";
                for (var i = 0; i < data.data.length; ++i) {
                    var sc = "";
                    if (data.data[i].score != -1) {
                        sc = "成绩：<span class=\"text-green\">" + data.data[i].grade + "</span>";
                    }
                    html += "<div class=\"paper clearfix\">\n" +
                        "                <div class=\"paper-col tit\">\n" +
                        "                    <div class=\"name\">\n" + data.data[i].title +
                        "                    </div>\n" +
                        "                    <div class=\"muted clearfix\">\n" +
                        "                        <div class=\"muted-item\">老师：" + data.data[i].teacherName + "</div>\n" +
                        "                        <div class=\"muted-item\">开始时间：" + data.data[i].beginTime + "</div>\n" +
                        "                        <div class=\"muted-item\">截止时间：" + data.data[i].endTime + "</div>\n" +
                        "                    </div>\n" +
                        "                </div>\n" +
                        "                <div class=\"paper-col sc\">\n" + sc +
                        "                </div>\n" +
                        "                <div class=\"paper-col actions\">\n" +
                        "                    <a class=\"button blue r2\" href=\"" + rootPath + "/GoTest/TestOne?id=" + data.data[i].id + "\">进入答题</a>                </div>\n" +
                        "            </div>";
                }
                $("#c-grid-ajax").html(html);
            },
            error: function () {
                alert("服务器请求失败");
            }
        })
    })
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
        }
        ;

        $(".tip span").click(function () {
            $(this).closest('.tip').hide('slow');
        });
        setTimeout(function () {
            $('.tip.autoclose').hide('slow')
        }, 5000);
    });

    // $.post('/Message/UnreadedMsg', function (data) {
    //     if (data > 0) {
    //         $('#nav_letter').append('<span class="unreadtip">' + data + '</span>');
    //     }
    // });
</script>
</body>
</html>



