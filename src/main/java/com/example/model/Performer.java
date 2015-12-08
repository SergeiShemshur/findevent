package com.example.model;

import javax.persistence.Entity;
import javax.persistence.OneToOne;

@Entity
public class Performer extends BaseEntity {

    @OneToOne
    User owner;


    public User getOwner() {
        return owner;
    }

    public void setOwner(User owner) {
        this.owner = owner;
    }

}

