package com.example.model;

import javax.persistence.Column;
import javax.persistence.Entity;


@Entity
public class EventDetails extends BaseEntity {


    @Column
    String name;

    @Column
    String description;




}
