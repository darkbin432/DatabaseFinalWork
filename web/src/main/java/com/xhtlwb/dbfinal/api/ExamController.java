package com.xhtlwb.dbfinal.api;

import com.xhtlwb.dbfinal.service.IExamService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/**
 * @author Xueht
 */
@Controller
@RequestMapping("/api")
public class ExamController {
    @Resource
    private IExamService examService;
}
