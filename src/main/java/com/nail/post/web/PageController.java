package com.nail.post.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/page")
public class PageController {




    //注册页面跳转
    @RequestMapping("/register")
    public String toRegister(){
        return "register";
    }
    //登陆成功后首页跳转
    @RequestMapping("/head")
    public String toHead(){
        return "UserManager/head";
    }
    //到登陆页面
    @RequestMapping("/login")
    public String toLogin(){
        return "login";
    }
}
