package com.nail.post.service;

import com.nail.post.dao.UserMapper;
import com.nail.post.entity.Result;
import com.nail.post.entity.User;
import com.nail.post.entity.UserExample;
import com.nail.post.utils.ResultUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;


import java.util.ArrayList;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    public List<User> getUserList() {
        return null;
    }

    public Result<User> login(String username,String password) {

        UserExample example = new UserExample();
        UserExample.Criteria criteria = example.createCriteria();
        criteria.andUsernameEqualTo(username);
        List<User> list = userMapper.selectByExample(example);
        if (list == null || list.isEmpty()) {
            return ResultUtils.failure("用户名或密码错误", 400);
        }
        User user = list.get(0);
       if (user.getPassword().equals(DigestUtils.md5DigestAsHex(password.getBytes()))){
           return ResultUtils.success(list.get(0));
       }
            return ResultUtils.failure("您输入的用户名或密码有误！",400);


    }
}
