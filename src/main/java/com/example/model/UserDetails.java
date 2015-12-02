package com.example.model;


import jdk.nashorn.internal.objects.annotations.Getter;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.OneToOne;


@Entity
public class UserDetails extends BaseEntity {


    @OneToOne(cascade = CascadeType.ALL)
    User user;


    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
