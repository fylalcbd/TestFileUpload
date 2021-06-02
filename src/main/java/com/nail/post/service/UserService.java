package com.nail.post.service;

import com.nail.post.entity.Result;
import com.nail.post.entity.User;

import java.util.List;

public interface UserService {
    List<User> getUserList();

    Result<User> login(String username,String password);
}
