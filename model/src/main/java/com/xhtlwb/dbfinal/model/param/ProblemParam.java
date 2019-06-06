package com.xhtlwb.dbfinal.model.param;

/**
 * @author Xueht
 */
public class ProblemParam extends BasicParam {
    private Integer userId;
    private Integer examId;
    private Integer problemId;
    private Integer choose;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getExamId() {
        return examId;
    }

    public void setExamId(Integer examId) {
        this.examId = examId;
    }

    public Integer getProblemId() {
        return problemId;
    }

    public void setProblemId(Integer problemId) {
        this.problemId = problemId;
    }

    public Integer getChoose() {
        return choose;
    }

    public void setChoose(Integer choose) {
        this.choose = choose;
    }
}
