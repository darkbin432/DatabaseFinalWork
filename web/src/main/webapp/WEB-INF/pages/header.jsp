<%--
  Created by IntelliJ IDEA.
  User: 斌
  Date: 2019/5/27
  Time: 18:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<script>
    var user;
    var nowCourseId;
    var nowExamId;
    var nowCourseTitle;
    var nowExamTitle;

    jQuery(
        function ($) {
            $.ajax({
                type: "GET",
                url: rootPath+"/getCurrentUser",
                dataType: "json",
                async:false,
                cache:false,
                data: {
                },
                success: function (data) {
                    if(data.status==200){
                        user=data.data;
                    }else {
                    }
                },
                error: function () {
                }
            });
        }
    );

</script>
</html>
