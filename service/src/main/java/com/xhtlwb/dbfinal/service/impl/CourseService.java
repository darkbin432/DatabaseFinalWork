package com.xhtlwb.dbfinal.service.impl;

import com.xhtlwb.dbfinal.model.Course;
import com.xhtlwb.dbfinal.model.result.ApiResult;
import com.xhtlwb.dbfinal.persistence.CourseDao;
import com.xhtlwb.dbfinal.service.ICourseService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @author Xueht
 */
@Service
public class CourseService implements ICourseService {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Resource
    CourseDao courseDao;

    @Override
    public ApiResult insert(Course course) {
        ApiResult apiResult = new ApiResult();
        try{
            courseDao.insertInfo(course);
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
            courseDao.deleteInfo(id);
            apiResult.success();
        } catch (Exception ex) {
            logger.error(ex.getMessage());
            apiResult.fail("删除失败");
        }
        return apiResult;
    }

    @Override
    public ApiResult update(Course course) {
        ApiResult apiResult = new ApiResult();
        try{
            courseDao.updateInfo(course);
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
            Course course = courseDao.getOne(id);
            apiResult.success(course);
        } catch (Exception ex) {
            logger.error(ex.getMessage());
            apiResult.fail("获取失败");
        }
        return apiResult;
    }
}
