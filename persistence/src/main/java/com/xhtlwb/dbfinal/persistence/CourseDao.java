package com.xhtlwb.dbfinal.persistence;

import com.xhtlwb.dbfinal.model.Course;
import com.xhtlwb.dbfinal.model.param.CourseParam;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author Xueht
 */
public interface CourseDao {
    void insertInfo(Course course);

    void updateInfo(Course course);

    void deleteInfo(Integer id);

    Course getOne(Integer id);

    List<Course> getAllCourseByStudent(CourseParam courseParam);

    List<Course> getAllCourseByTeacher(CourseParam courseParam);

    void insertUserCourseRelation(@Param("userId") Integer userId, @Param("courseId") Integer courseId);
}
