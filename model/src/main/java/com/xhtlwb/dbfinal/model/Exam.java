package com.xhtlwb.dbfinal.model;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;
import java.util.List;

/**
 * @author Xueht
 */
public class Exam extends Entity{
    private String title;
    private Integer courseId;
    private Integer teacherId;
//    @JsonFormat(pattern = "yyyy-MM-dd HH:mm",timezone="GMT+8")
    private String beginTime;
//    @JsonFormat(pattern = "yyyy-MM-dd HH:mm",timezone="GMT+8")
    private String endTime;
    private String problemIds;
    private String teacherName;
    private Integer grade;
    private Integer type;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Integer getCourseId() {
        return courseId;
    }

    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }

    public Integer getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(Integer teacherId) {
        this.teacherId = teacherId;
    }

    public String getBeginTime() {
        return beginTime;
    }

    public void setBeginTime(String beginTime) {
        this.beginTime = beginTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public String getProblemIds() {
        return problemIds;
    }

    public void setProblemIds(String problemIds) {
        this.problemIds = problemIds;
    }

    public String getTeacherName() {
        return teacherName;
    }

    public void setTeacherName(String teacherName) {
        this.teacherName = teacherName;
    }

    public Integer getGrade() {
        return grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }
}
