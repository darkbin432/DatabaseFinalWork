package com.xhtlwb.dbfinal.persistence;

import com.xhtlwb.dbfinal.model.Course;

/**
 * @author Xueht
 */
public interface CourseDao {
    void insertInfo(Course course);

    void updateInfo(Course course);

    void deleteInfo(Integer id);

    Course getOne(Integer id);
}
