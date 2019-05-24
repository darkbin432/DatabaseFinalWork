package com.xhtlwb.dbfinal.api;

import com.xhtlwb.dbfinal.service.IProblemService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/**
 * @author Xueht
 */
@Controller
@RequestMapping("/api")
public class ProblemController {
    @Resource
    private IProblemService problemService;
}
