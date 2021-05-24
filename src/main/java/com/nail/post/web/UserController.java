package com.nail.post.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created By XJL On 2017/10/24
 */
@RequestMapping("/userManager")
@Controller
public class UserController {
    @RequestMapping("/head")
    public String page(){
        return "/head";
    }

    //用户列表页面跳转
    @RequestMapping("/userList")
    public String userList(){
        return "/UserManager/userList";
    }
}
