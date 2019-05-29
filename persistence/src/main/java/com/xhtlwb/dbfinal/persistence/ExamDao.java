package com.xhtlwb.dbfinal.persistence;

import com.xhtlwb.dbfinal.model.Exam;
import com.xhtlwb.dbfinal.model.param.ExamParam;

import java.util.List;

/**
 * @author Xueht
 */
public interface ExamDao {
    void insertInfo(Exam exam);

    void updateInfo(Exam exam);

    void deleteInfo(Integer id);

    Exam getOne(Integer id);

    List<Exam> getAllExam(ExamParam examParam);
}
