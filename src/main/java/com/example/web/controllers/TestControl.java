package com.example.web.controllers;

import com.example.repository.EventRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TestControl {


    @Autowired
    EventRepository repository;

@RequestMapping("/test")
    public @ResponseBody String getTest(){

    return  "";
}

}
