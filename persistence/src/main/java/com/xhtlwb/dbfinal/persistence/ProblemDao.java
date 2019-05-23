package com.xhtlwb.dbfinal.persistence;

import com.xhtlwb.dbfinal.model.Problem;

/**
 * @author Xueht
 */
public interface ProblemDao {
    void insertProblem(Problem problem);

    void updateInfo(Problem problem);

    Problem selectOneProblem(Integer id);

    void deldteProblem(Integer id);
}
