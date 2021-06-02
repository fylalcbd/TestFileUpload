package com.nail.post.service;


import com.nail.post.entity.User;
import com.nail.post.service.LoginService;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;

import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.realm.AuthenticatingRealm;
import org.springframework.beans.factory.annotation.Autowired;



public class ShiroRealm extends AuthenticatingRealm{

    @Autowired
    private LoginService loginService;

    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
       //把AuthenticationToken转换为UsernamePasswordToken
        System.out.println("验证.....................");
        UsernamePasswordToken upToken = (UsernamePasswordToken) authenticationToken;

        //2.从UsernamePasswordToken中获取username
        String username= upToken.getUsername();
        //3.调用数据库的方法，从数据库中获取username对应的记录
        System.out.println("....................."+username);

        User user = loginService.getUserByUsername(username);


        System.out.println("AAAAAAAAAAAAAAAAAAAAAAAAA+"+user);
        //若用户不存在，抛出UnkownAccountException
        if (user==null){
            throw new UnknownAccountException("用户不存在");
        }
        //5.根据用户信息，决定是否抛出其他的AuthenticationException
        //5.根据用户情况，来构建AuthenticationInfo对象并返回Name
       Object principle = username;
       Object credentials =  user.getPassword();
        String realmnName = getName();
        System.out.printf("before simpleAuthenticationInfo____________");
        SimpleAuthenticationInfo simpleAuthenticationInfo = new SimpleAuthenticationInfo(principle,credentials,realmnName);
        System.out.printf("after simpleAuthenticationInfo____________");
        return simpleAuthenticationInfo;
    }
}
