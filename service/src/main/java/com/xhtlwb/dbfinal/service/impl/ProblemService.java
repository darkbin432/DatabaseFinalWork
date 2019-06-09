package com.xhtlwb.dbfinal.service.impl;

import com.xhtlwb.dbfinal.model.Problem;
import com.xhtlwb.dbfinal.model.param.ProblemParam;
import com.xhtlwb.dbfinal.model.result.ApiResult;
import com.xhtlwb.dbfinal.persistence.ProblemDao;
import com.xhtlwb.dbfinal.service.IProblemService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author Xueht
 */
@Service
public class ProblemService implements IProblemService {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Resource
    ProblemDao problemDao;

    @Override
    public ApiResult insert(Problem problem) {
        ApiResult apiResult = new ApiResult();
        try {
            problemDao.insertProblem(problem);
            apiResult.success();
        } catch (Exception ex) {
            logger.error(ex.getMessage(), ex);
            apiResult.fail("插入失败");
        }
        return apiResult;
    }

    @Override
    public ApiResult delete(Integer id) {
        ApiResult apiResult = new ApiResult();
        try {
            problemDao.deldteProblem(id);
            apiResult.success();
        } catch (Exception ex) {
            logger.error(ex.getMessage(), ex);
            apiResult.fail("删除失败");
        }
        return apiResult;
    }

    @Override
    public ApiResult update(Problem problem) {
        ApiResult apiResult = new ApiResult();
        try {
            problemDao.updateInfo(problem);
            apiResult.success();
        } catch (Exception ex) {
            logger.error(ex.getMessage(), ex);
            apiResult.fail("更新失败");
        }
        return apiResult;
    }

    @Override
    public ApiResult getOne(Problem problem) {
        ApiResult apiResult = new ApiResult();
        try {
            Problem nproblem = problemDao.selectOneProblem(problem);
            apiResult.success(nproblem);
        } catch (Exception ex) {
            logger.error(ex.getMessage(), ex);
            apiResult.fail("获取失败");
        }
        return apiResult;
    }

    @Override
    public ApiResult getAllProblem(ProblemParam problemParam) {
        ApiResult apiResult = new ApiResult();
        try {
            List<Problem> lp = problemDao.getAllProblem(problemParam);
            apiResult.success(lp);
        } catch (Exception ex) {
            logger.error(ex.getMessage(), ex);
            apiResult.fail("获取失败");
        }
        return apiResult;
    }

    @Override
    public ApiResult submitAnswer(ProblemParam problemParam) {
        ApiResult apiResult = new ApiResult();
        try {
            ProblemParam param = problemDao.getProblemStatus(problemParam);
            if (param == null) {
                problemDao.insertProblemStatus(problemParam);
            } else {
                problemDao.updateProblemStatus(problemParam);
            }
            apiResult.success();
        } catch (Exception ex) {
            logger.error(ex.getMessage(), ex);
            apiResult.fail("提交失败");
        }
        return apiResult;
    }

}
