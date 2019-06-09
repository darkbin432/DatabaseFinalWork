package com.xhtlwb.dbfinal.service;

import com.xhtlwb.dbfinal.model.User;
import com.xhtlwb.dbfinal.model.result.ApiResult;

/**
 * @author Xueht
 */
public interface IUserService {
    ApiResult login(User user);

    ApiResult updateInfo(User user);
}
