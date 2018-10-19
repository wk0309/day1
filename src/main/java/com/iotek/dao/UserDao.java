package com.iotek.dao;

import com.iotek.model.User;

/**
 * Created by Administrator on 2018/10/19.
 */
public interface UserDao {
    User getUser(User user);
    void addUser(User user);
    User getUserByName(String name);
}
