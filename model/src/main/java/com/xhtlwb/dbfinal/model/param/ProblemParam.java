package com.xhtlwb.dbfinal.model.param;

/**
 * @author Xueht
 */
public class ProblemParam extends BasicParam {
    private Integer examId;
    private Integer problemId;

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
}
