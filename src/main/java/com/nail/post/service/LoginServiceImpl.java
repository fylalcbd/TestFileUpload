package com.nail.post.service;

import com.nail.post.dao.UserMapper;
import com.nail.post.entity.User;
import com.nail.post.entity.UserExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LoginServiceImpl implements LoginService{

    @Autowired
    private UserMapper userMapper;

    public User getUserByUsername(String username) {
        System.out.println("<<<<<<<<<<<<<<<<<");
        UserExample example = new UserExample();
        UserExample.Criteria criteria = example.createCriteria();
        criteria.andUsernameEqualTo(username);

        List<User> list =  userMapper.selectByExample(example);

        User user = list.get(0);
        return user;
    }
}
