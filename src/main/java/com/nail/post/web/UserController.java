package com.nail.post.web;

import com.nail.post.entity.Result;
import com.nail.post.entity.User;
import com.nail.post.service.UserService;
import com.nail.post.utils.ResultUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created By XJL On 2017/10/24
 */


@Controller
@RequestMapping("/userManager")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/head")
    public String page(){
        return "UserManager/head";
    }

    //用户列表页面跳转
    @RequestMapping("/userList")
    public String userList(){
        return "/UserManager/userList";
    }

    @ResponseBody
    @RequestMapping(value = "/userList",method = RequestMethod.GET)
    public List<User> getUserLists(){
        System.out.println("+++++++++++++++++++before");
      List<User> list =   userService.getUserList();
        System.out.printf("----------------------after");
        return list;
    }

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    @ResponseBody
    public Result<User> login(User user){
        System.out.println("+++++++++++++user"+user);

        Subject currentUser = SecurityUtils.getSubject();


        String username = user.getUsername();
        String password = user.getPassword();

        if (!currentUser.isAuthenticated()) {

            UsernamePasswordToken token = new UsernamePasswordToken(username, password);
            // rememberme
            token.setRememberMe(false);
            try {

                currentUser.login(token);
            }


            catch (AuthenticationException ae) {
                //unexpected condition?  error?
                System.out.println("登录失败！" + ae.getMessage());
                return ResultUtils.failure("密码或用户名错误！",400);
            }
        }
        return ResultUtils.success();

    }



   /* @RequestMapping(value = "/login")
    public String loginpage(){
        return "/error";
    }*/




}
