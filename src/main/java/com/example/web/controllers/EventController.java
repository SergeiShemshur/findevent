package com.example.web.controllers;

import com.example.model.Event;
import com.example.model.EventDetails;
import com.example.model.User;
import com.example.repository.EventDetailsRepository;
import com.example.repository.EventRepository;
import com.example.repository.UserRepository;
import com.example.service.EventService;
import com.example.utility.CurrentUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import javax.validation.constraints.Null;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.Set;

@Controller
public class EventController {

    @Autowired
    EventService eventService;


    @RequestMapping(value = "/event", method = RequestMethod.GET)
    public String getCreateEventPage() {
        return "event_create_page";
    }


    @RequestMapping(value = "event", method = RequestMethod.POST)
    public
    @ResponseBody
    String createEvent(@RequestParam("description") String description,
                       @RequestParam("name") String name,
                       @DateTimeFormat(pattern = "yyyy-MM-dd") Date eventDate,
                       Authentication authentication) {

        CurrentUser currentUser = (CurrentUser) authentication.getPrincipal();
        eventService.createEvent(description, name, currentUser.getUser(), eventDate);
        return "ok";
    }


    @RequestMapping(value = "user/events", method = RequestMethod.GET)
    public
    @ResponseBody
    String getEvetnCurrentUser(@PathVariable long id, Authentication authentication) {
        CurrentUser currentUser = (CurrentUser) authentication.getPrincipal();
        Set<Event> events = eventService.getEvetnsByUser(currentUser.getUser().getUserDetails());

        StringBuilder builder = new StringBuilder();
        for (Event event : events) {
            builder.append(event.getEventDetails().getName() + "\n");
        }
        return builder.toString();
    }

    @RequestMapping(value = "user/events/{id}", method = RequestMethod.GET)
    public @ResponseBody String getCurrentUserEvent(@PathVariable long id){
      //  return   eventService.getEventsById(id);
        //TODO
  return null;
    }



}
