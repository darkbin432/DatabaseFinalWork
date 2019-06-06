<%--
  Created by IntelliJ IDEA.
  User: 斌
  Date: 2019/5/29
  Time: 20:37
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
    <meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
    <meta name="renderer" content="webkit">
    <title class="examTitle"></title>
    <script>
        var sitePath = '/';
    </script>
    <link rel="stylesheet"
          href="<%=request.getContextPath()%>/Content/plugins/Font-Awesome-4.4.0/css/font-awesome.min.css">
    <link href="<%=request.getContextPath()%>/Content/Site.css" rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/Content/breadcrumb.css" rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/Content/fileicon.css" rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/Content/component.css" rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/Content/form.css" rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/Content/misc.css" rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/Content/fancybox2/jquery.fancybox.css" rel="stylesheet"/>
    <script src="<%=request.getContextPath()%>/Scripts/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script src="<%=request.getContextPath()%>/Scripts/jquery.validate.min.js" type="text/javascript"></script>
    <script src="<%=request.getContextPath()%>/Scripts/jquery.xbox.js" type="text/javascript"></script>
    <script src="<%=request.getContextPath()%>/Scripts/xutils.js" type="text/javascript"></script>
    <script src="<%=request.getContextPath()%>/Scripts/json.js" type="text/javascript"></script>
    <script src="<%=request.getContextPath()%>/Content/fancybox2/jquery.fancybox.pack.js"></script>
    <script src="<%=request.getContextPath()%>/Scripts/staticUrl.js" type="text/javascript"></script>
    <!--[if lt IE 9]>
    <script src="<%=request.getContextPath()%>/Scripts/html5.js"></script>
    <![endif]-->
</head>
<body>
<%@ include file="../header.jsp" %>
<link href="<%=request.getContextPath()%>/Content/testone.css" type="text/css" rel="stylesheet"/>
<link href="<%=request.getContextPath()%>/Content/xheditor/plugins.css" type="text/css" rel="stylesheet"/>
<script src="<%=request.getContextPath()%>/Content/xheditor/xheditor-1.1.13-zh-cn.min.js"
        type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/Content/xheditor/config.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/Scripts/jquery.cookie.js" type="text/javascript"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/Content/fancybox2/jquery.fancybox.pack.js"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/Content/fancybox2/jquery.fancybox.css"
      media="screen"/>

<div id="wrapper" style="background-color: #f5f5f5;">
    <div id="header">
        <div id="header_inner" class="text-center" style="color: #fff;">
            <h2 class="examTitle"></h2>
        </div>
    </div>

    <div id="content" style="padding: 10px 0 0 10px; margin-right: 200px; background-color: #fff;">
        <div id="content_left"
             style="float: left; width: 150px; padding: 15px 10px; border-right: 1px solid #eee; overflow: auto;">
            <dl class="bundle-item front" id="problemList">
                <dt style="position: relative;">
                    单项选择题
                </dt>

            </dl>
        </div>
        <div id="content_right" style="margin-left: 171px;">
            <div id="question_content" class="layout-relative" style="margin-top: 0; overflow-y: auto;">
                <div id="loading" class="loading">
                    <span>正在更新数据……</span>
                </div>
                <div id="c-grid-ajax">

                </div>
            </div>
        </div>
    </div>
    <div id="testuserInfo">
        <div class="info-addons actions">
            <a id="cmd_submit" class="button green r2" href="javascript:;" data-val-testid="238892">提交作业</a>
        </div>
        <div class="info-addons photo">
            <img alt="头像" src="<%=request.getContextPath()%>/Content/images/avatar_default.gif"/>
        </div>
        <div class="info-addons" id="examUser">姓名：罗伟斌</div>
        <div class="info-addons info-testmemo" style="margin-top: 40px; overflow-y: auto; padding: 10px;">

        </div>
    </div>
</div>

<script type="text/javascript">
    jQuery(function ($) {
        var examId;
        var selectProblemId;
        $("#examUser").html("姓名：" + user.name + " ");

        function getQueryString(name) {
            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
            var r = window.location.search.substr(1).match(reg);
            if (r != null) return unescape(r[2]);
            return null;
        }

        var id = getQueryString("id");

        $.ajax({
            type: "POST",
            url: rootPath + "/api/getExam",
            dataType: "json",
            async: false,
            data: {
                id: id,
            },
            success: function (data) {
                $(".examTitle").html(data.data.title);
                examId = data.data.id;
            },
            error: function () {
                alert("服务器请求失败")
            }
        })

        $.ajax({
            type: "POST",
            url: rootPath + "/api/getProblems",
            dataType: "json",
            async: false,
            data: {
                examId: id,
            },
            success: function (data) {
                var html = "<dt style=\"position: relative;\">\n" +
                    "                    单项选择题\n" +
                    "                </dt>";
                for (var i = 0; i < data.data.length; ++i) {
                    var finish = "undo";
                    if (data.data[i].isFinish == 1) {
                        finish = "finish";
                    }
                    html += "<dd id=\"" + data.data[i].id + "\" class=\"" + finish + "\">\n" +
                        "第" + (i + 1) + "题" +
                        "                </dd>\n";
                }
                $("#problemList").html(html);
            },
            error: function () {
                alert("服务器请求失败")
            }
        })

        $("#problemList").on('click', 'dd', function () {
            selectProblemId = $(this).attr("id");
            $("#problemList dd").removeClass("sel");
            $(this).addClass("sel");
            $.ajax({
                type: "POST",
                url: rootPath + "/api/getProblem",
                dataType: "json",
                async: false,
                data: {
                    id: selectProblemId,
                },
                success: function (data) {
                    var html = "<div class=\"question-item\" id=\"" + id + "\" data-type=\"SINGLE_CHIOCE\" data-type-judgeonsave=\"0\">\n" +
                        "    <div class=\"question-face\"><p>" + data.data.problemFace + "</p></div>\n" +
                        "    <div class=\"question-answer\">\n" +
                        "        <input class=\"question-option-input\" type=\"radio\" value=\"1\" id=\"" + id + "\" name=\"ANSWER_" + id + "\">\n" +
                        "        <label for=\"Question_2445923_OptionA\">\n" + data.data.problemChoose1 + "</label><br>\n" +
                        "        <input class=\"question-option-input\" checked=\"'checked'\" type=\"radio\" value=\"2\" id=\"" + id + "\" name=\"ANSWER_" + id + "\">\n" +
                        "        <label for=\"Question_2445923_OptionB\">\n" + data.data.problemChoose2 + "</label><br>\n" +
                        "        <input class=\"question-option-input\" type=\"radio\" value=\"3\" id=\"" + id + "\" name=\"ANSWER_" + id + "\">\n" +
                        "        <label for=\"Question_2445923_OptionC\">\n" + data.data.problemChoose3 + "</label><br>\n" +
                        "        <input class=\"question-option-input\" type=\"radio\" value=\"4\" id=\"" + id + "\" name=\"ANSWER_" + id + "\">\n" +
                        "        <label for=\"Question_2445923_OptionD\">\n" + data.data.problemChoose4 + "</label><br>\n" +
                        "        </div>\n" +
                        "\n" +
                        "        <div class=\"question-spinner lf\"></div>\n" +
                        "        </div>";
                    $("#c-grid-ajax").html(html);
                },
                error: function () {
                    alert("服务器请求失败")
                }
            })
        })

        $("#c-grid-ajax").on('click', '.question-option-input', function () {
            $.ajax({
                type: "POST",
                url: rootPath + "/api/submitAnswer",
                dataType: "json",
                async: false,
                data: {
                    userId: user.id,
                    examId: examId,
                    problemId: $(this).attr("id"),
                    value: $(this).val(),
                },
                success: function (data) {
                    $(".sel").removeClass("undo");
                    $(".sel").addClass("finish");
                },
                error: function () {
                    alert("服务器请求失败")
                }
            })
        })


    })
</script>

<script type="text/javascript">

    function loadQuestionOne(userTestQuestionId) {
        //$('#upload_answerkey').uploadifyDestroy();
        $("#loading").show();
        // $.get('/GoTest/QuestionOne', { id: userTestQuestionId, tail: new Date().getTime() }, function (view) {
        //     $('#c-grid-ajax').html(view);
        //     $("#loading").hide();
        // });
    }

    // function answerAdaptation(userTestQuestionId) {
    //     var questionItem = $(".question-item[id='" + userTestQuestionId + "']");
    //     var answer = "";
    //     var i = 0;
    //     switch (questionItem.attr('data-type')) {
    //         case "JUDGE":
    //         {
    //             answer = questionItem.find(':checked').val();
    //             answer = answer || '';
    //             break;
    //         }
    //         case "SINGLE_CHIOCE":
    //         {
    //             answer = questionItem.find(':checked').val();
    //             answer = answer || '';
    //             break;
    //         }
    //         case "MULIT_CHIOCE":
    //         {
    //             var tmpanswer = [];
    //             $('.question-multi-input:checked').each(function () {
    //                 tmpanswer[i] = $(this).val();
    //                 i++;
    //             });
    //             answer = JSON.stringify(tmpanswer);
    //             break;
    //         }
    //         case "FILL_BLANK":
    //         case "PROGRAM_FILL_BLANK":
    //         {
    //             var tmpanswer = [];
    //             $('.question-blank-input').each(function () {
    //                 tmpanswer[i] = $(this).val();
    //                 i++;
    //             });
    //             answer = JSON.stringify(tmpanswer);
    //             break;
    //         }
    //         case "PROGRAM_DESIGN":
    //         case "PROGRAM_CORRECT":
    //         case "DESIGN":
    //         {
    //             answer = $('.question-design-input').val();
    //             break;
    //         }
    //         case "COMPLEX":
    //         {
    //             answer = '';
    //             var si = 0;
    //             $('.sub-question').each(function () {
    //                 var subAnswer = '';
    //                 if ($(this).attr('data-type') == 'SINGLE_CHIOCE') {
    //                     subAnswer = $(this).find(':checked').val();
    //                     subAnswer = subAnswer || '';
    //                 }
    //                 else if ($(this).attr('data-type') == 'MULIT_CHIOCE') {
    //                     var rt = 0;
    //                     $('.question-multi-input:checked', this).each(function () {
    //                         if (rt > 0) {
    //                             subAnswer += '&&&';
    //                         }
    //                         subAnswer += $(this).val();
    //                         rt++;
    //                     });
    //                 }
    //                 else if ($(this).attr('data-type') == 'FILL_BLANK') {
    //                     var rt = 0;
    //                     $('.sub-question-blank-input', this).each(function () {
    //                         if (rt > 0) {
    //                             subAnswer += '&&&';
    //                         }
    //                         subAnswer += $(this).val();
    //                         rt++;
    //                     });
    //                 }
    //                 if (si > 0) {
    //                     answer += '~~~';
    //                 }
    //                 answer += subAnswer;
    //                 si++;
    //             });
    //             //console.log(answer);
    //             break;
    //         }
    //     }
    //     return answer;
    // }
    // function answerextAdaptation(userTestQuestionId) {
    //     var questionItem = $(".question-item[id='" + userTestQuestionId + "']");
    //     var answerext = "";
    //     if (questionItem.attr('data-type') == "DESIGN"
    //         || questionItem.attr('data-type') == "DOC_DESIGN"
    //         || questionItem.attr('data-type').indexOf("OPENEXAM_") != -1) {
    //         answerext = $('.question-design-input-ext').val();
    //     }
    //     return answerext;
    // }
    //
    // function saveQuestionOne(userTestQuestionId, callback) {
    //     var answer = answerAdaptation(userTestQuestionId);
    //     var answerext = answerextAdaptation(userTestQuestionId);
    //     var questionItem = $(".question-item[id='" + userTestQuestionId + "']");
    //
    //     if (!$('.question-spinner', questionItem).hasClass('conflict')) {
    //         $('.question-spinner', questionItem).removeClass('error success').addClass('conflict').text('正在保存答案…');
    //         $.post('/GoTest/SaveQuestionOne', {
    //             id: userTestQuestionId,
    //             tail: new Date().getTime(),
    //             answer: answer,
    //             answerext: answerext
    //         }, function (data) {
    //             if (data.Success) {
    //                 $('.question-spinner', questionItem).removeClass('conflict').addClass('success').text('已经保存答案。');
    //                 if (callback && $.isFunction(callback)) callback();
    //                 window.setTimeout(function () {
    //                     $('.question-spinner', questionItem).removeClass('success').text('');
    //                 }, 1500);
    //             } else {
    //                 $('.question-spinner', questionItem).removeClass('conflict').addClass('error').text(data.ErrorMessage);
    //             }
    //         });
    //     }
    // }
    //
    // function submitTest(userTestId) {
    //     //$(window).unbind('beforeunload');
    //     $.post('/GoTest/FinishTestOne', { id: userTestId }, function (data) {
    //         if (data.Success) {
    //             window.location.href = "/GoTest/Index";
    //         }
    //         else {
    //             alert(data.ErrorMessage);
    //             window.location.href = "/GoTest/Index";
    //         }
    //     });
    // }
    //
    // /*************倒计时************/
    // var timeIntervalHandle = null;
    // //总时间
    // var totalTime = parseInt('0');
    // //流逝的时间
    // var slideTime = parseInt('0');
    // var cookieName = 'slidetime_7084' ;
    // if ($.cookie(cookieName) !== undefined) {
    //     slideTime = parseInt($.cookie(cookieName));
    // }
    //
    // //倒计时函数， 一秒一次
    // function timeTask() {
    //     slideTime++
    //     $.cookie(cookieName, slideTime + '', { expires: new Date().AddSeconds(totalTime - slideTime + 100) });
    //     if (slideTime >= totalTime) //结束
    //     {
    //         $('#time').text('0');
    //         $("#time-spitter").text("考试结束！");
    //         if (timeIntervalHandle) {
    //             window.clearInterval(timeIntervalHandle);
    //             $.removeCookie(cookieName);
    //         }
    //         if (slideTime > totalTime) {
    //             slideTime = totalTime;
    //         }
    //         window.setTimeout(function () {
    //             signSlideTime();
    //             alert("考试时间已到！");
    //             testTimeoutProcess();
    //         }, 3000);
    //     } else {
    //         if (slideTime % 180 == 0) {
    //             signSlideTime();
    //         }
    //         if (totalTime - slideTime < 600) {
    //             $("#time-spitter").text("距离考试结束时间不多了，请注意！");
    //         }
    //         var h_part = parseInt((totalTime - slideTime) / 60 / 60);
    //         var m_part = parseInt(((totalTime - slideTime) % (60 * 60)) / 60);
    //         var s_part = parseInt(((totalTime - slideTime) % (60 * 60)) % 60);
    //         $('#time').text((h_part >= 10 ? h_part : '0' + h_part) + ':' + (m_part >= 10 ? m_part : '0' + m_part) + ':' + (s_part >= 10 ? s_part : '0' + s_part));
    //     }
    // }
    //
    // function signSlideTime() {
    //     $.post('/GoTest/SignSlideTime', { id: $("#cmd_submit").attr('data-val-testid'), slide: slideTime, tail: new Date().getTime() }, function (data) {
    //         //
    //     });
    // }
    //
    // //倒计时结束
    // function testTimeoutProcess() {
    //
    //     if ('False' == 'True') {
    //         var userTestQuestionId = $('dd.sel').attr('data-val-id');
    //         saveQuestionOne(userTestQuestionId, function () {
    //             submitTest($("#cmd_submit").attr('data-val-testid'));
    //         });
    //     }
    // }
    // function initEditorKey(testId, questionId) {
    //     var uplinkForKey = "/Base/EditorUpload?flo=test%2F%7Btest_id%7D%2Fanswer%2F%7Bquestion_id%7D%2F";
    //     uplinkForKey = uplinkForKey.replace("{test_id}", testId)
    //         .replace("{question_id}", questionId)
    //     var editorKeySetting = $.extend({}, full, {
    //         'upImgUrl': uplinkForKey,
    //     })
    //
    //     var editorKey = $("textarea.question-design-input").xheditor(editorKeySetting);
    //     editorKey.settings.blur = function () {
    //         editorKey.getSource();
    //     };
    // }
    //
    // function initUploadKey(testId, questionId, fileCount, maxSize, fileExts) {
    //     $('#upload_answerkey').fileupload({
    //         url: '/GoTest/UploadAnswerFile',
    //         dataType: 'json',
    //         autoUpload: false,
    //         singleFileUploads: false,
    //         formData: {
    //             'test_id': testId,
    //             'question_id': questionId
    //         },
    //         add: function (e, data) {
    //             $('.upload-queue').empty().hide();
    //             var isValid = true;
    //             var uploadErrors = [];
    //             var acceptFileTypes = new RegExp('(\.|\/)(' + fileExts.replace(/,/g, '|') + ')$', 'i');
    //             if (data.originalFiles.length > (fileCount || 1)) {
    //                 uploadErrors.push('只允许上传' + (fileCount || 1) + '个文件');
    //                 isValid = false;
    //             } else {
    //                 if ($('.upload-queue').find('.queue-header').size() == 0) {
    //                     $('<span>待传文件：</p>').addClass("queue-header").appendTo('.upload-queue');
    //                 }
    //                 $.each(data.files, function (index, file) {
    //                     if (file.name && !acceptFileTypes.test(file.name)) {
    //                         uploadErrors.push('文件' + file.name + '不是' + fileExts + '文件。');
    //                         isValid = false;
    //                     } else if (file.size > maxSize) {
    //                         uploadErrors.push('文件' + file.name + '太大了。');
    //                         isValid = false;
    //                     } else {
    //                         $('<p>' + file.name + '</p>').appendTo('.upload-queue');
    //                     }
    //                 });
    //                 if ($('.upload-queue').find('button').size() == 0) {
    //                     $('<button>').text('确认上传').addClass('button green').click(function () {
    //                         data.submit();
    //                     }).prop('disabled', !isValid).appendTo('.upload-queue');
    //                 }
    //             }
    //             if (isValid) {
    //                 $('.upload-queue').show();
    //             } else {
    //                 if (uploadErrors.length > 0) {
    //                     alert(uploadErrors.join("\n") + '请重新选择文件。');
    //                 }
    //             }
    //         },
    //         always: function (e, data) {
    //             $('#progress .bar').css('width', 0);
    //             $('.upload-queue').empty().hide();
    //         },
    //         done: function (e, data) {
    //             $('#upload_callback_info').empty();
    //             $('#upload-answer').val(data.result.val);
    //             $.each(data.result.files, function (index, file) {
    //                 console.log(file);
    //                 $('<p><a class="uploaded-file" target="_blank" href="' + file.url.substr(1) + '">' + file.name + '</a></p>')
    //                     .appendTo('#upload_callback_info');
    //             });
    //             $.each(data.result.errors, function (index, file) {
    //                 $('<p style="color: red;">' + file.name + '上传错误：' + file.error + '</p>')
    //                     .appendTo('#upload_callback_error');
    //             });
    //             if (data.result.files.length > 0) {
    //                 $("#cmd_saveQuestion").trigger('click');
    //             }
    //         },
    //         fail: function (e, data) {
    //             $.each(data.messages, function (index, error) {
    //                 $('<p style="color: red;">上传错误: ' + error + '</p>')
    //                     .appendTo('#upload_callback_error');
    //             });
    //         },
    //         progressall: function (e, data) {
    //             var progress = parseInt(data.loaded / data.total * 100, 10);
    //             $('#progress .bar').css(
    //                 'width',
    //                 progress + '%'
    //             );
    //         }
    //     });
    // }
    //
    // $(function () {
    //     $('.bundle-item:first').addClass('expand');
    //     if ($("#time").size() > 0) {
    //         timeIntervalHandle = window.setInterval(timeTask, 1000);
    //     }
    //     $('#content_left').height($(window).height() - $('#content_left').offset().top - 30);
    //     $('#question_content').height($('#content_left').height() + 30 - 37);
    //     $('.info-testmemo').height($('#content_left').height() + 30 - $('.info-testmemo').offset().top + 30);
    //     $(window).resize(function () {
    //         $('#content_left').height($(window).height() - $('#content_left').offset().top - 30);
    //         $('#question_content').height($('#content_left').height() + 30 - 37);
    //         $('.info-testmemo').height($('#content_left').height() + 30 - $('.info-testmemo').offset().top + 30);
    //     });
    //     $('.bundle-item dt').click(function () {
    //         $(this).parents('dl').toggleClass('expand');
    //     });
    //     $('.bundle-item dd').hover(function () {
    //         $(this).addClass('over');
    //     }, function () {
    //         $(this).removeClass('over');
    //     });
    //     $('.bundle-item dd a').click(function () {
    //         $("#judge_result_info").hide();
    //         $('.sel').removeClass('sel');
    //         $(this).parent().addClass('sel');
    //         loadQuestionOne($(this).attr('data-val-id'));
    //     });
    //
    //     $('.bundle-item:first dd:first a').triggerHandler('click');
    //
    //     $('#cmd_submit').click(function () {
    //         if (confirm('您确定要提交作业吗？')) {
    //             submitTest($(this).attr('data-val-testid'));
    //         }
    //     });
    //
    //     $('#cmd_judge').click(function () {
    //         var id = $('dd.sel').attr('data-val-id');
    //         if (id) {
    //             saveQuestionOne(id, function () {
    //                 $.fancybox.open({ type: 'iframe', href: '/GoTest/JudgeQuestionOne1' + '/' + id });
    //             });
    //         } else {
    //             alert('请先选择需要阅卷的题目。');
    //         }
    //     });
    //
    //     $('#cmd_redo').click(function () {
    //         var userTestQuestionId = $('dd.sel').attr('data-val-id');
    //         if (userTestQuestionId) {
    //             if(confirm("确定要重置该题目吗？")){
    //                 $.post('/GoTest/ReworkQuestionOne', { id: userTestQuestionId }, function (data) {
    //                     if (data.Success) {
    //                         $('dd.sel').removeClass('finish');
    //                         $('dd.sel').addClass('undo');
    //                         loadQuestionOne(userTestQuestionId);
    //                     } else {
    //                         alert(data.ErrorMessage);
    //                     }
    //                 });
    //             }
    //         } else {
    //             alert('请先选择需要重做的题目。');
    //         }
    //     });
    //
    //     $('#cmd_previous').click(function () {
    //         $("#judge_result_info").hide();
    //         var allQuestion = $('.bundle-item dd');
    //         if (allQuestion.size() > 0) {
    //             var desQuestion = null;
    //             if ($('.sel').size() > 0) {
    //                 var i = allQuestion.index($('.sel'));
    //                 if (i == 0) {
    //                     alert('已经是第一题了。');
    //                     return false;
    //                 } else {
    //                     i = i - 1;
    //                     desQuestion = allQuestion.eq(i);
    //                 }
    //             } else {
    //                 desQuestion = allQuestion.first();
    //             }
    //             if (desQuestion) {
    //                 if (!desQuestion.parent().hasClass('expand')) {
    //                     $('.bundle-item').removeClass('expand');
    //                     desQuestion.parent().addClass('expand');
    //                 }
    //                 $('.sel').removeClass('sel');
    //                 desQuestion.addClass('sel');
    //
    //                 loadQuestionOne(desQuestion.attr('data-val-id'));
    //
    //             } else {
    //                 alert("定位失败。");
    //             }
    //         } else {
    //             alert('题库中还没有题目.');
    //         }
    //     });
    //     $('#cmd_next').click(function () {
    //         $("#judge_result_info").hide();
    //         var allQuestion = $('.bundle-item dd');
    //         if (allQuestion.size() > 0) {
    //             var desQuestion = null;
    //             if ($('.sel').size() > 0) {
    //                 var i = allQuestion.index($('.sel'));
    //                 if (i == allQuestion.size() - 1) {
    //                     alert('已经是最后一题了。');
    //                     return false;
    //                 } else {
    //                     i = i + 1;
    //                     desQuestion = allQuestion.eq(i);
    //                 }
    //             } else {
    //                 desQuestion = allQuestion.first();
    //             }
    //             if (desQuestion) {
    //                 if (!desQuestion.parent().hasClass('expand')) {
    //                     $('.bundle-item').removeClass('expand');
    //                     desQuestion.parent().addClass('expand');
    //                 }
    //                 $('.sel').removeClass('sel');
    //                 desQuestion.addClass('sel');
    //
    //                 loadQuestionOne(desQuestion.attr('data-val-id'));
    //
    //             } else {
    //                 alert("定位失败。");
    //             }
    //         } else {
    //             alert('题库中还没有题目.');
    //         }
    //     });
    //
    //     $('#question_content').on('click', '.question-option-input,#cmd_saveQuestion,.sub-question-option-input', function () {
    //         var questionItem = $(this).closest('.question-item');
    //         var userTestQuestionId = questionItem.attr('id');
    //         saveQuestionOne(userTestQuestionId, function () {
    //             if (questionItem.attr('data-type-judgeonsave') == "1") {
    //                 $.fancybox.open({ type: 'iframe', href: '/GoTest/JudgeQuestionOne1' + '/' + userTestQuestionId });
    //             }
    //             $("dd[data-val-id='" + userTestQuestionId + "']").addClass('finish');
    //         });
    //     });
    //
    //     $('#question_content').on('click', '.question-multi-input', function () {
    //         var questionItem = $(this).closest('.question-item');
    //         var userTestQuestionId = questionItem.attr('id');
    //         if (window["saveTrigger_" + userTestQuestionId]) {
    //             clearTimeout(window["saveTrigger_" + userTestQuestionId]);
    //         }
    //         window["saveTrigger_" + userTestQuestionId] = setTimeout(function () {
    //             saveQuestionOne(userTestQuestionId, function () {
    //                 $("dd[data-val-id='" + userTestQuestionId + "']").addClass('finish');
    //             });
    //         }, 2000);
    //     });
    //
    //     $('#question_content').on('keydown', '.question-blank-input,.sub-question-blank-input', function () {
    //         if ($(this).val() && $(this).val() != '') {
    //             var questionItem = $(this).closest('.question-item');
    //             var userTestQuestionId = questionItem.attr('id');
    //             if (window["saveTrigger_" + userTestQuestionId]) {
    //                 clearTimeout(window["saveTrigger_" + userTestQuestionId]);
    //             }
    //             window["saveTrigger_" + userTestQuestionId] = setTimeout(function () {
    //                 saveQuestionOne(userTestQuestionId, function () {
    //                     $("dd[data-val-id='" + userTestQuestionId + "']").addClass('finish');
    //                 });
    //             }, 2000);
    //         }
    //     });
    //
    //     $(document).keydown(function (e) {//绑定键盘按下事件
    //         var doPrevent;
    //         // for IE && Firefox
    //         var varkey = (e.keyCode) || (e.which) || (e.charCode);
    //         if (varkey == 8) {
    //             var d = e.srcElement || e.target;
    //             if (d.tagName.toUpperCase() == 'INPUT' || d.tagName.toUpperCase() == 'TEXTAREA') {
    //                 doPrevent = d.readOnly || d.disabled;
    //                 if (d.type.toUpperCase() == 'SUBMIT'
    //                     || d.type.toUpperCase() == 'RADIO'
    //                     || d.type.toUpperCase() == 'CHECKBOX'
    //                     || d.type.toUpperCase() == 'BUTTON') {
    //                     doPrevent = true;
    //                 }
    //             }
    //             else {
    //                 doPrevent = true;
    //             }
    //         }
    //         else {
    //             doPrevent = false;
    //         }
    //         if (doPrevent)
    //             e.preventDefault();
    //     });
    //     $("a.iframe").fancybox({
    //         padding: 0,
    //         fitToView: true,
    //         autoSize: true,
    //         type: 'iframe',
    //         openEffect: 'none',
    //         closeEffect: 'none'
    //     });
    // });
</script>
<style>
    body {
        -moz-user-select: none; /*火狐*/
        -webkit-user-select: none; /*webkit浏览器*/
        -ms-user-select: none; /*IE10*/
        -khtml-user-select: none; /*早期浏览器*/
        user-select: none;
    }
</style>
<script type="text/javascript">
    function key(e) {
        var keynum = (e.keyCode) || (e.which) || (e.charCode)
        var d = e.srcElement || e.target;
        if (d.tagName.toUpperCase() != 'INPUT' && d.tagName.toUpperCase() != 'TEXTAREA') {
            if (e.ctrlKey && keynum == 67) {
                alert("禁止复制内容！");
                return false;
            }
        }
    }

    $(document).keydown(function () {
        return key(arguments[0])
    });

    document.body.onselectstart = document.body.ondrag = function () {
        return false;
    }
</script>
<script type="text/javascript">
    $(document).bind("contextmenu", function (e) {
        return false;
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
