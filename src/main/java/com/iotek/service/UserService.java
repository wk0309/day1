package com.iotek.service;

import com.iotek.model.User;

/**
 * Created by Administrator on 2018/10/19.
 */
public interface UserService {
    User getUser(User user);
    void addUser(User user);
}
