package com.xhtlwb.dbfinal.persistence;

import com.xhtlwb.dbfinal.model.Problem;
import com.xhtlwb.dbfinal.model.param.ProblemParam;

import java.util.List;

/**
 * @author Xueht
 */
public interface ProblemDao {
    void insertProblem(Problem problem);

    void updateInfo(Problem problem);

    Problem selectOneProblem(Integer id);

    void deldteProblem(Integer id);

    List<Problem> getAllProblem(ProblemParam problemParam);

    ProblemParam getProblemStatus(ProblemParam problemParam);

    void insertProblemStatus(ProblemParam problemParam);

    void updateProblemStatus(ProblemParam problemParam);
}
