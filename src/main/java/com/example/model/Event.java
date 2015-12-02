package com.example.model;


import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import java.util.Set;

public class Event extends BaseEntity {


    @OneToOne
    User creator;

    @OneToMany
    Set<User> participants;






}
