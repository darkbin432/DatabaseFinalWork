package com.xhtlwb.dbfinal.service.impl;

import com.xhtlwb.dbfinal.model.Exam;
import com.xhtlwb.dbfinal.model.Problem;
import com.xhtlwb.dbfinal.model.param.ExamParam;
import com.xhtlwb.dbfinal.model.result.ApiResult;
import com.xhtlwb.dbfinal.persistence.ExamDao;
import com.xhtlwb.dbfinal.persistence.ProblemDao;
import com.xhtlwb.dbfinal.service.IExamService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author Xueht
 */

@Service
public class ExamService implements IExamService {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Resource
    ExamDao examDao;

    @Resource
    ProblemDao problemDao;

    @Override
    public ApiResult insert(Exam exam) {
        ApiResult apiResult = new ApiResult();
        try {
            examDao.insertInfo(exam);
            String[] add = exam.getProblemIds().split(";");
            for (String problemId : add) {
                examDao.insertExamProblemRelation(Integer.valueOf(problemId), exam.getId());
            }
            apiResult.success();
        } catch (Exception ex) {
            logger.error(ex.getMessage());
            apiResult.fail("插入失败");
        }
        return apiResult;
    }

    @Override
    public ApiResult delete(Integer id) {
        ApiResult apiResult = new ApiResult();
        try {
            examDao.deleteInfo(id);
            apiResult.success();
        } catch (Exception ex) {
            logger.error(ex.getMessage(), ex);
            apiResult.fail("删除失败");
        }
        return apiResult;
    }

    @Override
    public ApiResult update(Exam exam) {
        ApiResult apiResult = new ApiResult();
        try {
            examDao.updateInfo(exam);
            apiResult.success();
        } catch (Exception ex) {
            logger.error(ex.getMessage(), ex);
            apiResult.fail("更新失败");
        }
        return apiResult;
    }

    @Override
    public ApiResult getOne(Integer id) {
        ApiResult apiResult = new ApiResult();
        try {
            Exam exam = examDao.getOne(id);
            apiResult.success(exam);
        } catch (Exception ex) {
            logger.error(ex.getMessage(), ex);
            apiResult.fail("获取失败");
        }
        return apiResult;
    }

    @Override
    public ApiResult getAllExam(ExamParam examParam) {
        ApiResult apiResult = new ApiResult();
        try {
            List<Exam> le;
            if (examParam.getUserType() == 0) {
                le = examDao.getAllExamByStudent(examParam);
                ExamParam tmp = new ExamParam();
                tmp.setUserId(examParam.getUserId());
                for (Exam exam : le) {
                    tmp.setId(exam.getId());
                    List<Problem> lp = examDao.getGrade(tmp);
                    int right = 0;
                    for (Problem problem : lp) {
                        if (problem.getAnswer().equals(problem.getChoose())) {
                            right++;
                        }
                    }
                    if (lp.size() != 0) {
                        exam.setGrade(right * 100 / lp.size());
                    }
                }
            } else {
                le = examDao.getAllExamByTeacher(examParam);
            }
            apiResult.success(le);
        } catch (Exception ex) {
            logger.error(ex.getMessage(), ex);
            apiResult.fail("获取失败");
        }
        return apiResult;
    }
}
