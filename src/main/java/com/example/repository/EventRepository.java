package com.example.repository;

import com.example.model.Event;
import com.example.model.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

@Repository
public interface EventRepository extends CrudRepository<Event, Long> {

/*
    @Autowired
    SessionFactory sessionFactory;



    public void  createEvent(Event event){
        Session session = sessionFactory.getCurrentSession();
        session.save(event);
    }


    public void deleteEventById(long id){
        Session session = sessionFactory.getCurrentSession();
        session.delete(getEventById(id));
    }

    public Event getEventById(long id){
        Session session = sessionFactory.getCurrentSession();
       return (Event)session.createQuery("from Event where id=:id").setLong("id",id).uniqueResult();
    }
*/





}
