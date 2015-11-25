package com.example.controllers;

import com.example.repository.UserDao;
import com.example.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

    @Autowired
    UserDao userDao;
    @RequestMapping("/")
    public String index(){

        User user =new User();
        user.setEmail("sdsdf");
        user.setName("volodyz");
        userDao.save(user);
        return "index";
    }
}
