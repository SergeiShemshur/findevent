package com.example.model;


import jdk.nashorn.internal.objects.annotations.Getter;

import javax.persistence.*;
import java.util.Set;


@Entity
public class UserDetails extends BaseEntity {


    @OneToOne(cascade = CascadeType.ALL)
    User user;

    @OneToMany( cascade = CascadeType.ALL)
    Set<Event> events;


    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Set<Event> getEvent() {
        return events;
    }

    public void setEvent(Set<Event> event) {
        this.events = event;
    }
}
