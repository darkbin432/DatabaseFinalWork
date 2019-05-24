package com.xhtlwb.dbfinal.service.impl;

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
}
