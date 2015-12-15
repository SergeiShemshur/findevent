package com.example.repository;

import com.example.model.Performer;
import com.example.model.UserDetails;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PerformerRepository extends CrudRepository<Performer, Long> {
}
