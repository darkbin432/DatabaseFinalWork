package com.xhtlwb.dbfinal.api;

import com.xhtlwb.dbfinal.model.param.ExamParam;
import com.xhtlwb.dbfinal.model.result.ApiResult;
import com.xhtlwb.dbfinal.service.IExamService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * @author Xueht
 */
@Controller
@RequestMapping("/api")
public class ExamController {
    @Resource
    private IExamService examService;

    @RequestMapping(value = "/getExams", method = RequestMethod.POST)
    @ResponseBody
    private ApiResult getExams(ExamParam examParam) {
        return examService.getAllExam(examParam);
    }

    @RequestMapping(value = "/getExam", method = RequestMethod.POST)
    @ResponseBody
    private ApiResult getExam(Integer id) {
        return examService.getOne(id);
    }
}
