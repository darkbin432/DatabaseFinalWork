package com.xhtlwb.dbfinal.api;

import com.xhtlwb.dbfinal.model.param.ProblemParam;
import com.xhtlwb.dbfinal.model.result.ApiResult;
import com.xhtlwb.dbfinal.service.IProblemService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * @author Xueht
 */
@Controller
@RequestMapping("/api")
public class ProblemController {
    @Resource
    private IProblemService problemService;

    @RequestMapping(value = "/getProblem", method = RequestMethod.POST)
    @ResponseBody
    private ApiResult getProblem(ProblemParam problemParam) {
        return problemService.getAllProblem(problemParam);
    }
}
