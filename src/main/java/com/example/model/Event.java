package com.example.model;


import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import java.util.Set;

@Entity(name = "event")
public class Event extends BaseEntity {


    @OneToOne
    User creator;

   /* @OneToMany
    Set<User> participants;*/






}
