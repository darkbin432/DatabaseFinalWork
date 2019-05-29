package com.xhtlwb.dbfinal.api;

import com.xhtlwb.dbfinal.model.param.CourseParam;
import com.xhtlwb.dbfinal.model.result.ApiResult;
import com.xhtlwb.dbfinal.service.ICourseService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * @author Xueht
 */
@Controller
@RequestMapping("/api")
public class CourseController {
    @Resource
    private ICourseService courseService;

    @RequestMapping(value = "/getCourses", method = RequestMethod.POST)
    @ResponseBody
    private ApiResult getCourses(CourseParam courseParam) {
        return courseService.getAllCourse(courseParam);
    }

    @RequestMapping(value = "/getCourse", method = RequestMethod.POST)
    @ResponseBody
    private ApiResult getCourse(Integer id) {
        return courseService.getOne(id);
    }
}
