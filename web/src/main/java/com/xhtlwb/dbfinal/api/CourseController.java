package com.xhtlwb.dbfinal.api;

import com.xhtlwb.dbfinal.model.param.CourseParam;
import com.xhtlwb.dbfinal.model.result.ApiResult;
import com.xhtlwb.dbfinal.service.ICourseService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * @author Xueht
 */
@Controller
@RequestMapping("/api")
public class CourseController {
    @Resource
    private ICourseService courseService;

    @RequestMapping(value = "/getCourses",method = RequestMethod.POST)
    @ResponseBody
    private ApiResult getCourses(CourseParam courseParam) {
        return courseService.getAllCourse(courseParam);
    }
}
