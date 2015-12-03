package com.example.web.controllers;

import com.example.utility.CurrentUser;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class HomeController {


    @RequestMapping("/")
    public ModelAndView index(Authentication authentication) {
        ModelAndView modelAndView = new ModelAndView("index");
        if(authentication != null) {
            CurrentUser currentUser = (CurrentUser) authentication.getPrincipal();
            modelAndView.addObject("username", currentUser.getUser().getName());
        }
        return modelAndView;
    }



}
