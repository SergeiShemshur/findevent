package com.example.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import java.util.Set;

@Entity
public class Region extends BaseEntity {
    @Column
    String  name;

    @OneToMany
    Set<City> city;


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Set<City> getCity() {
        return city;
    }

    public void setCity(Set<City> city) {
        this.city = city;
    }
}
