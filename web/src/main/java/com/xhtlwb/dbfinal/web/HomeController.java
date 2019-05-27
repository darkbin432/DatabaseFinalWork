package com.xhtlwb.dbfinal.web;

import com.xhtlwb.dbfinal.ApplicationController;
import com.xhtlwb.dbfinal.model.User;
import com.xhtlwb.dbfinal.model.result.ApiResult;
import org.apache.shiro.SecurityUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController extends ApplicationController {

    @RequestMapping({"/","/index"})
    public ModelAndView index(){
        return buildMAV("index.jsp");
    }

    @RequestMapping(value = "/GoTest/MyCourse" ,method = RequestMethod.GET)
    public ModelAndView MyCourse(){
        return buildMAV("MyCourse.jsp");
    }

    @RequestMapping(value = "/GoTest/MyStudy" ,method = RequestMethod.GET)
    public ModelAndView MyStudy(Integer id){
        return buildMAV("MyStudy.jsp");
    }

    @RequestMapping(value = "/GoTest/MyTest" ,method = RequestMethod.GET)
    public ModelAndView MyTest(){
        return buildMAV("MyTest.jsp");
    }

    @RequestMapping(value = "/Account" ,method = RequestMethod.GET)
    public ModelAndView Account(){
        return buildMAV("Account.jsp");
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout() {
        currentSubjectLogout();
        return "redirect:/index";
    }

    @RequestMapping("getCurrentUser")
    @ResponseBody
    public ApiResult getCurrentUser(){
        User user= (User) SecurityUtils.getSubject().getPrincipal();
        ApiResult apiResult=new ApiResult();
        apiResult.success(user);
        return apiResult;
    }
}
