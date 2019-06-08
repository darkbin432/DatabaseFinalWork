<%--
  Created by IntelliJ IDEA.
  User: 斌
  Date: 2019/5/27
  Time: 14:44
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
    <title>我的考试</title>
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

    <div class="span20"></div>
    <div class="layout-relative">
        <div id="loading" class="loading">正在加载数据…</div>
        <div id="c-grid-ajax" class="paper-list">
            <div class="paper clearfix">
                <div class="paper-col tit">
                    <div class="name">
                        程序设计基础期末考试（17-18-1）
                    </div>
                    <div class="muted clearfix">
                        <div class="muted-item">开始时间：17:30</div>
                        <div class="muted-item">结束时间：19:00</div>
                        <div class="muted-item">考试时长：90分钟</div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="paper-col pgs">
                </div>
                <div class="paper-col sc">
                </div>
                <div class="paper-col actions">
                    已截止
                </div>
                <div class="clearfix"></div>
            </div>

        </div>
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
    })
</script>

<script type="text/javascript">
    jQuery(function ($) {
        $.ajax({
            type: "POST",
            url: rootPath + "/api/getTests",
            dataType: "json",
            async: false,
            data: {
                userId: user.id,
                type: 1
            },
            success: function (data) {
                var html = "";
                for (var i = 0; i < data.data.length; ++i) {
                    var examTime = "100分钟";
                    var examStatus = "已截止";
                    html += "<div class=\"paper clearfix\">\n" +
                        "                <div class=\"paper-col tit\">\n" +
                        "                    <div class=\"name\">\n" + data.data[i].title +
                        "                    </div>\n" +
                        "                    <div class=\"muted clearfix\">\n" +
                        "                        <div class=\"muted-item\">开始时间：" + data.data[i].beginTime + "</div>\n" +
                        "                        <div class=\"muted-item\">结束时间：" + data.data[i].endTime + "</div>\n" +
                        "                        <div class=\"muted-item\">考试时长：" + examTime + "</div>\n" +
                        "                        <div class=\"clearfix\"></div>\n" +
                        "                    </div>\n" +
                        "                </div>\n" +
                        "                <div class=\"paper-col pgs\">\n" +
                        "                </div>\n" +
                        "                <div class=\"paper-col sc\">\n" +
                        "                </div>\n" +
                        "                <div class=\"paper-col actions\">\n" + examStatus +
                        "                </div>\n" +
                        "                <div class=\"clearfix\"></div>\n" +
                        "            </div>";
                }
                $("#c-grid-ajax").html(html);
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



