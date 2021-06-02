package com.nail.post.service;

import com.nail.post.dao.UserMapper;
import com.nail.post.entity.Result;
import com.nail.post.entity.User;
import com.nail.post.entity.UserExample;
import com.nail.post.service.RegisterService;
import com.nail.post.utils.ResultUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import java.util.List;
@Service
public class RegisterServiceImpl implements RegisterService {

    @Autowired
    private UserMapper userMapper;
    public Result<User> check(String param, Integer type) {

        UserExample example = new UserExample();
        UserExample.Criteria criteria =example.createCriteria();

        //1.username      2.email
        if(type==1){
            criteria.andUsernameEqualTo(param);
        }if (type==2){
            criteria.andEmailEqualTo(param);
        }

        List<User> list =  userMapper.selectByExample(example);
        if (list==null||list.isEmpty()){
            return ResultUtils.success();
        }

        return ResultUtils.failure("用户名或邮箱重复",400);


    }

    public Result<User> register(User user) {
        if(StringUtils.isEmpty(user.getUsername())||StringUtils.isEmpty(user.getPassword())){
            return ResultUtils.failure("用户名或密码不能为空！",400);
        }
        Result<User> result = check(user.getUsername(),1);
        if (result.getCode()==400){
            return ResultUtils.failure("用户名已存在！",400);
        }
        if(user.getEmail()!=null){
            result = check(user.getEmail(),2);
            if( result.getCode()==400){
                return ResultUtils.failure("邮箱已被注册",400);
            }
        }
        user.setState(false);
        user.setPassword(DigestUtils.md5DigestAsHex(user.getPassword().getBytes()));
        userMapper.insert(user);

        return ResultUtils.success();
    }
}
