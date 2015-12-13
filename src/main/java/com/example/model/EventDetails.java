package com.example.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToOne;


@Entity
public class EventDetails extends BaseEntity {

    public EventDetails(Event event, String name, String description) {
        this.event = event;
        this.name = name;
        this.description = description;
    }

    public EventDetails() {
    }

    @OneToOne
    Event event;

    @Column
    String name;

    @Column
    String description;

    public Event getEvent() {
        return event;
    }

    public void setEvent(Event event) {
        this.event = event;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
