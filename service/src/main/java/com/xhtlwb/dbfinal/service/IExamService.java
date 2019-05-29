package com.xhtlwb.dbfinal.service;

import com.xhtlwb.dbfinal.model.Exam;
import com.xhtlwb.dbfinal.model.param.ExamParam;
import com.xhtlwb.dbfinal.model.result.ApiResult;

/**
 * @author Xueht
 */
public interface IExamService {
    ApiResult insert(Exam exam);

    ApiResult delete(Integer id);

    ApiResult update(Exam exam);

    ApiResult getOne(Integer id);

    ApiResult getAllExam(ExamParam examParam);
}
