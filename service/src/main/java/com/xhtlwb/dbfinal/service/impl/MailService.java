package com.xhtlwb.dbfinal.service.impl;

import com.xhtlwb.dbfinal.persistence.MailDao;
import com.xhtlwb.dbfinal.service.IMailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @author Xueht
 */

@Service
public class MailService implements IMailService {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Resource
    MailDao mailDao;
}
