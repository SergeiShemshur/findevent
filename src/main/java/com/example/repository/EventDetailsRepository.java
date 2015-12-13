package com.example.repository;

import com.example.model.EventDetails;
import com.example.model.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EventDetailsRepository extends CrudRepository<EventDetails, Long> {







}
