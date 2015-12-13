package com.example.service;

import com.example.model.*;
import com.example.repository.EventDetailsRepository;
import com.example.repository.EventRepository;

import com.example.repository.UserDetailsRepository;
import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;
import java.util.Set;


@Service
public class EventService {

    @Autowired
    EventDetailsRepository eventDetailsRepository;
    @Autowired
    EventRepository eventRepository ;
    @Autowired
    SessionFactory factory;
    @Autowired
    UserDetailsRepository userDetailsRepository;


    @Transactional
    public void createEvent(String description, String name, User user,Date eventDate){
        Event event = new Event();
        EventDetails eventDetails = new EventDetails(event,name,description);
        event.setEventDetails(eventDetails);
        event.setCreateDate(new Date());
        event.setEventDate(eventDate);

        eventDetailsRepository.save(eventDetails);
        UserDetails userDetails = userDetailsRepository.findOne(user.getId());
        userDetails.getEvent().add(event);

        event.setCreator(userDetails);
        eventRepository.save(event);

    }



    public void addParticipants(Performer participant,Event event){




    }

    public void deleteEvent(Event event){
        eventRepository.delete(event);
    }

    public Event getEventsById(long id){
       return eventRepository.findOne(id);
    }


    public Set<Event> getEvetnsByUser(UserDetails userDetails){
        return userDetailsRepository.findOne(userDetails.getId()).getEvent();
    }


}
