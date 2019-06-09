package com.xhtlwb.dbfinal.service.impl;

import com.xhtlwb.dbfinal.model.User;
import com.xhtlwb.dbfinal.model.result.ApiResult;
import com.xhtlwb.dbfinal.persistence.UserDao;
import com.xhtlwb.dbfinal.service.IUserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @author Xueht
 */

@Service
public class UserService implements IUserService {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Resource
    UserDao userDao;

    @Override
    public ApiResult login(User user) {
        ApiResult apiResult = new ApiResult();
        try {
            User temp = userDao.getUser(user.getUsername());
            if (temp != null) {
                temp.setPassword("***********");
                apiResult.success(temp);
            } else {
                apiResult.fail("帐号或密码错误");
            }
        } catch (Exception e) {
            apiResult.fail("数据库获取失败");
        }
        return apiResult;
    }

    @Override
    public ApiResult updateInfo(User user) {
        ApiResult apiResult = new ApiResult();
        try {
            userDao.updateInfo(user);
            apiResult.success();
        } catch (Exception ex) {
            logger.error(ex.getMessage(), ex);
            apiResult.fail("更新失败");
        }
        return apiResult;
    }
}
