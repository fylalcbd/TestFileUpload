package com.nail.post.service;

import com.nail.post.entity.User;

public interface LoginService {
    User getUserByUsername(String username);
}
