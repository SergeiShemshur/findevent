package com.example.web.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.Optional;

@Controller
public class LoginController {
    private static final Logger LOG = LoggerFactory.getLogger(LoginController.class);

    @RequestMapping(value = "/login" , method = RequestMethod.GET)
    public ModelAndView getLoginPage(@RequestParam Optional<String> error){
        LOG.debug("Getting login page, error={}",error);
        return new ModelAndView("login","error",error);
    }

    @RequestMapping(value = "/getUser",method = RequestMethod.GET)
    public @ResponseBody
    String get(Authentication authentication){
        UserDetails currentUser = (UserDetails) authentication.getPrincipal();
     return currentUser.getUsername();
    }

}
