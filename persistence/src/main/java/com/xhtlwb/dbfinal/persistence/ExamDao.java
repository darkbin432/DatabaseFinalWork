package com.xhtlwb.dbfinal.persistence;

import com.xhtlwb.dbfinal.model.Exam;

/**
 * @author Xueht
 */
public interface ExamDao {
    void insertInfo(Exam exam);

    void updateInfo(Exam exam);

    void deleteInfo(Integer id);

    Exam getOne(Integer id);
}
