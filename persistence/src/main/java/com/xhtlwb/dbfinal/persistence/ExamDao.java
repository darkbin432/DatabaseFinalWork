package com.xhtlwb.dbfinal.persistence;

import com.xhtlwb.dbfinal.model.Exam;
import com.xhtlwb.dbfinal.model.param.ExamParam;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author Xueht
 */
public interface ExamDao {
    void insertInfo(Exam exam);

    void updateInfo(Exam exam);

    void deleteInfo(Integer id);

    Exam getOne(Integer id);

    List<Exam> getAllExamByStudent(ExamParam examParam);

    List<Exam> getAllExamByTeacher(ExamParam examParam);

    void insertExamProblemRelation(@Param("problemId") Integer problemId, @Param("examId") Integer examId);
}
