package com.xhtlwb.dbfinal.service;

import com.xhtlwb.dbfinal.model.Problem;
import com.xhtlwb.dbfinal.model.result.ApiResult;

/**
 * @author Xueht
 */
public interface IProblemService {
    ApiResult insert(Problem problem);

    ApiResult delete(Integer id);

    ApiResult update(Problem problem);

    ApiResult getOne(Integer id);
}
