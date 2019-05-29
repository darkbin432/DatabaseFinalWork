package com.xhtlwb.dbfinal.service.impl;

import com.xhtlwb.dbfinal.model.Exam;
import com.xhtlwb.dbfinal.model.param.ExamParam;
import com.xhtlwb.dbfinal.model.result.ApiResult;
import com.xhtlwb.dbfinal.persistence.ExamDao;
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

    @Override
    public ApiResult insert(Exam exam) {
        ApiResult apiResult = new ApiResult();
        try{
            examDao.insertInfo(exam);
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
        try{
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
        try{
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
        try{
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
        try{
            List<Exam> le = examDao.getAllExam(examParam);
            apiResult.success(le);
        } catch (Exception ex) {
            logger.error(ex.getMessage(), ex);
            apiResult.fail("获取失败");
        }
        return apiResult;
    }
}
