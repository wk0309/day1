package com.iotek.controller;

import com.iotek.model.User;
import com.iotek.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by Administrator on 2018/10/19.
 */
@Controller
public class UserController {
    @Resource
    private UserService userService;

    @RequestMapping("/login")
    public String login(User user, HttpServletRequest request, HttpSession session)throws Exception{
        User user1=userService.getUser(user);
        if (null!=user1){
            session.setAttribute("user",user1);
            return "homePage";
        }
        request.setAttribute("error","用户名或密码错误！");
        return "../../index";
    }

    @RequestMapping("/toRegister")
    public String toTegister()throws Exception{
        return "register";
    }

    @RequestMapping("/register")
    public String register(User user,HttpServletRequest request)throws Exception{
        userService.addUser(user);
        request.setAttribute("success","注册成功");
        return "register";
    }

    @RequestMapping("/quit")
    public String quit()throws Exception{
        return "homePage";
    }

    @RequestMapping("/exit")
    public String exit()throws Exception{
        return "../../index";
    }

}
