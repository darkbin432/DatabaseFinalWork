package com.xhtlwb.dbfinal.model.param;

/**
 * @author Xueht
 */
public class CourseParam extends BasicParam{
    private Integer teacherId;
    private String title;
    private String username;

    public Integer getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(Integer teacherId) {
        this.teacherId = teacherId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
