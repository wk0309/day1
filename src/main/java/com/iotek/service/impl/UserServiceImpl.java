package com.iotek.service.impl;

import com.iotek.dao.UserDao;
import com.iotek.model.User;
import com.iotek.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2018/10/19.
 */
@Service
public class UserServiceImpl implements UserService {
    @Resource
    private UserDao userDao;

    public User getUser(User user) {
        if (null==user){
            return null;
        }
        return userDao.getUser(user);
    }

    public void addUser(User user) {
        userDao.addUser(user);
    }
}
