package com.nail.post.service;

import com.nail.post.entity.Result;
import com.nail.post.entity.User;
import com.sun.org.apache.regexp.internal.RE;

public interface RegisterService {
    Result<User> check(String param,Integer type);

    Result<User> register(User user);

}
