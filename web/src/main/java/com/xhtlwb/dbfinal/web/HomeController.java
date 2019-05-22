package com.xhtlwb.dbfinal.web;

import com.xhtlwb.dbfinal.ApplicationController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController extends ApplicationController {

    @RequestMapping(value = "/index" ,method = RequestMethod.GET)
    public ModelAndView index(){
        return buildMAV("index.jsp");
    }

    @RequestMapping(value = "/GoTest/MyCourse" ,method = RequestMethod.GET)
    public ModelAndView MyCourse(){
        return buildMAV("MyCourse.jsp");
    }

    @RequestMapping(value = "/api/login" ,method = RequestMethod.POST)
    public String login(){
        return "redirect:/GoTest/MyCourse";
    }
}