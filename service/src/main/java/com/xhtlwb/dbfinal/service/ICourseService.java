package com.xhtlwb.dbfinal.service;

import com.xhtlwb.dbfinal.model.Course;
import com.xhtlwb.dbfinal.model.param.CourseParam;
import com.xhtlwb.dbfinal.model.result.ApiResult;

/**
 * @author Xueht
 */
public interface ICourseService {
    ApiResult insert(Course course);

    ApiResult delete(Integer id);

    ApiResult update(Course course);

    ApiResult getOne(Integer id);

    ApiResult getAllCourse(CourseParam courseParam);
}
