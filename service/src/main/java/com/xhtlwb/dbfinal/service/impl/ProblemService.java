package com.xhtlwb.dbfinal.service.impl;

import com.xhtlwb.dbfinal.model.Problem;
import com.xhtlwb.dbfinal.model.result.ApiResult;
import com.xhtlwb.dbfinal.persistence.ProblemDao;
import com.xhtlwb.dbfinal.service.IProblemService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

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
        try{
            problemDao.insertProblem(problem);
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
            problemDao.deldteProblem(id);
            apiResult.success();
        } catch (Exception ex) {
            logger.error(ex.getMessage());
            apiResult.fail("删除失败");
        }
        return apiResult;
    }

    @Override
    public ApiResult update(Problem problem) {
        ApiResult apiResult = new ApiResult();
        try{
            problemDao.updateInfo(problem);
            apiResult.success();
        } catch (Exception ex) {
            logger.error(ex.getMessage());
            apiResult.fail("更新失败");
        }
        return apiResult;
    }

    @Override
    public ApiResult getOne(Integer id) {
        ApiResult apiResult = new ApiResult();
        try{
            Problem problem = problemDao.selectOneProblem(id);
            apiResult.success(problem);
        } catch (Exception ex) {
            logger.error(ex.getMessage());
            apiResult.fail("获取失败");
        }
        return apiResult;
    }
}
