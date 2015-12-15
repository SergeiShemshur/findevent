package com.example.model;


import jdk.nashorn.internal.objects.annotations.Getter;

import javax.persistence.*;
import java.util.Set;


@Entity
public class UserDetails extends BaseEntity {


    @OneToOne(cascade = CascadeType.ALL)
    private User user;

    @OneToMany(cascade = CascadeType.ALL)
    private Set<Event> events;

    @OneToOne
    private Performer performer;


    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }


    public Set<Event> getEvents() {
        return events;
    }

    public void setEvents(Set<Event> events) {
        this.events = events;
    }

    public Performer getPerformer() {
        return performer;
    }

    public void setPerformer(Performer performer) {
        this.performer = performer;
    }
}
