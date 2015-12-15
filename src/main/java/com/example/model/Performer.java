package com.example.model;

import javax.persistence.Entity;
import javax.persistence.OneToOne;

@Entity
public class Performer extends BaseEntity {

    @OneToOne
    UserDetails owner;

    public UserDetails getOwner() {
        return owner;
    }

    public void setOwner(UserDetails owner) {
        this.owner = owner;
    }
}

