package com.nail.post.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class PageController {


    //首页页面跳转
    @RequestMapping("/head")
    public String toHeadpage(){
        return "UserManager/head";
    }
}
