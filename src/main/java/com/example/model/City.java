package com.example.model;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import java.util.Set;

@Entity(name = "city")
public class City extends BaseEntity {

    @ManyToOne
    Region region;

    @OneToMany
    Set<Event> events;

    @OneToMany
    Set<UserDetails> userDetailses;



}
