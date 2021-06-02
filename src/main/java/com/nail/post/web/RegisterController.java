package com.nail.post.web;

import com.nail.post.entity.Result;
import com.nail.post.entity.User;
import com.nail.post.service.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/register")
public class RegisterController {

    @Autowired
    private RegisterService registerService;

    //  url:"/register/check/"+escape($("#rusername").val())+"/1?r="+Math.random(),


    @RequestMapping("/check/{param}/{type}")
    @ResponseBody
    public Result<User> inputCheck(@PathVariable("param") String param,@PathVariable("type") Integer type){

        Result<User> result = registerService.check(param,type);

        return result;
    }
    //("/register/register",$("#registerForm").serialize()
    @ResponseBody
    @RequestMapping(value = "/register",method = RequestMethod.POST)
   public Result<User> register(User user){

        Result<User> result = registerService.register(user);
        return result;
   }
}
