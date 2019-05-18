package com.xhtlwb.dbfinal.model;

/**
 * @author Xueht
 */
public class Problem extends Entity{
    private String problemFace;
    private String problemChoose1;
    private String problemChoose2;
    private String problemChoose3;
    private String problemChoose4;
    private Integer answer;

    public String getProblemFace() {
        return problemFace;
    }

    public void setProblemFace(String problemFace) {
        this.problemFace = problemFace;
    }

    public String getProblemChoose1() {
        return problemChoose1;
    }

    public void setProblemChoose1(String problemChoose1) {
        this.problemChoose1 = problemChoose1;
    }

    public String getProblemChoose2() {
        return problemChoose2;
    }

    public void setProblemChoose2(String problemChoose2) {
        this.problemChoose2 = problemChoose2;
    }

    public String getProblemChoose3() {
        return problemChoose3;
    }

    public void setProblemChoose3(String problemChoose3) {
        this.problemChoose3 = problemChoose3;
    }

    public String getProblemChoose4() {
        return problemChoose4;
    }

    public void setProblemChoose4(String problemChoose4) {
        this.problemChoose4 = problemChoose4;
    }

    public Integer getAnswer() {
        return answer;
    }

    public void setAnswer(Integer answer) {
        this.answer = answer;
    }
}
