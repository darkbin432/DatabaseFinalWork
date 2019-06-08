package com.xhtlwb.dbfinal.api;

import com.xhtlwb.dbfinal.model.Problem;
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

    @RequestMapping(value = "/getProblems", method = RequestMethod.POST)
    @ResponseBody
    private ApiResult getProblems(ProblemParam problemParam) {
        return problemService.getAllProblem(problemParam);
    }

    @RequestMapping(value = "/getProblem", method = RequestMethod.POST)
    @ResponseBody
    private ApiResult getProblem(Integer id) {
        return problemService.getOne(id);
    }

    @RequestMapping(value = "/submitAnswer", method = RequestMethod.POST)
    @ResponseBody
    private ApiResult submitAnswer(ProblemParam problemParam) {
        return problemService.submitAnswer(problemParam);
    }

    @RequestMapping(value = "/addProblem", method = RequestMethod.POST)
    @ResponseBody
    private ApiResult addProblem(Problem problem) {
        return problemService.insert(problem);
    }
}
