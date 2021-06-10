package com.nail.post.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class PageController {




    //注册页面跳转
    @RequestMapping("/page/register")
    public String toRegister(){
        return "register";
    }
    //登陆成功后首页跳转
    @RequestMapping("/page/head")
    public String toHead(){
        return "UserManager/head";
    }
}
