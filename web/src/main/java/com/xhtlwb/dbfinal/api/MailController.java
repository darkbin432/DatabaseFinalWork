package com.xhtlwb.dbfinal.api;

import com.xhtlwb.dbfinal.service.IMailService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/**
 * @author Xueht
 */
@Controller
@RequestMapping("/api")
public class MailController {
    @Resource
    private IMailService mailService;
}
