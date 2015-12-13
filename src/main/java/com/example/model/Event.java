package com.example.model;


import javax.persistence.*;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.Set;


@Entity(name = "event")
public class Event extends BaseEntity {


    @ManyToOne
    UserDetails creator;

    @OneToOne
    EventDetails eventDetails;

    @OneToMany
    Set<Performer> participants;



    @Column
    Date createDate;

    @Column
    Date eventDate;


    public UserDetails getCreator() {
        return creator;
    }

    public void setCreator(UserDetails creator) {
        this.creator = creator;
    }

    public Set<Performer> getParticipants() {
        return participants;
    }

    public void setParticipants(Set<Performer> participants) {
        this.participants = participants;
    }

    public EventDetails getEventDetails() {
        return eventDetails;
    }

    public void setEventDetails(EventDetails eventDetails) {
        this.eventDetails = eventDetails;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Date getEventDate() {
        return eventDate;
    }

    public void setEventDate(Date eventDate) {
        this.eventDate = eventDate;
    }
}
