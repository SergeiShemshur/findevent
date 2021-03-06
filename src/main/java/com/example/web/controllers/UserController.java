package com.example.web.controllers;

import com.example.service.UserService;
import com.example.utility.CurrentUser;
import com.example.utility.UserCreateFormValidator;
import com.example.utility.UserDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.NoSuchElementException;

@Controller
public class UserController {

    private final UserService userService;
    private final UserCreateFormValidator userCreateFormValidator;

    @Autowired
    public UserController(UserService userService, UserCreateFormValidator userCreateFormValidator) {
        this.userService = userService;
        this.userCreateFormValidator = userCreateFormValidator;
    }

    @InitBinder("form")
    public void initBinder(WebDataBinder binder) {
        binder.addValidators(userCreateFormValidator);
    }

    // @PreAuthorize("hasAuthority('ADMIN')")
    @RequestMapping(value = "user/create", method = RequestMethod.GET)
    public ModelAndView getUserCreatePage() {
        return new ModelAndView("user_create", "form", new UserDto());
    }


    @RequestMapping(value = "/user/{name}", method = RequestMethod.GET)
    public ModelAndView getUser(@PathVariable String name, Authentication authentication) {
        UserDetails currentUser = (UserDetails) authentication.getPrincipal();
        String userName = userService.getUserByEmail(currentUser.getUsername()).get().getName();

        if (userName.equals(name)) {
            return new ModelAndView("user_owner", "user", userService.getUserByName(name)
                    .orElseThrow(() -> new NoSuchElementException(String.format("User = %s  not found", name))));
        } else return new ModelAndView("user_guest", "user", userService.getUserByName(name)
                .orElseThrow(() -> new NoSuchElementException(String.format("User=%s not found", name))));
    }


    @RequestMapping(value = "/user/create", method = RequestMethod.POST)
    public String handleUserCreateForm(@Valid @ModelAttribute("form") UserDto form, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "user_create";
        }
        try {
            userService.create(form);
        } catch (DataIntegrityViolationException e) {
            bindingResult.reject("email.exists", "Email already exists");
            return "user_create";
        }
        return "redirect:/successful_created_page";
    }


    @RequestMapping(value = "/successful_created_page",method = RequestMethod.GET)
    public String getSuccessfulCreatePage(){
        return  "successful_created_page";
    }


    @RequestMapping(value = "/users", method = RequestMethod.GET)
    public ModelAndView getUsers() {
        return new ModelAndView("users_page", "users", userService.getAllUsers());
    }



    @RequestMapping(value = "/createPerformer", method = RequestMethod.GET)
    public
    @ResponseBody
    String createPerformer(Authentication authentication) {
        //TODO make form about performer

        CurrentUser currentUser = (CurrentUser) authentication.getPrincipal();
        String s ;
        if(currentUser.getUser().getUserDetails().getPerformer() == null){
            s = "null";
        }else  s = "notnull";


        return s;
    }



}