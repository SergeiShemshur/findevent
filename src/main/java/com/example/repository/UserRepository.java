package com.example.repository;


import com.example.model.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Collection;
import java.util.Optional;
import java.util.Set;

/**
 * A DAO for the entity User is simply created by extending the CrudRepository
 * interface provided by spring. The following methods are some of the ones
 * available from such interface: save, delete, deleteAll, findOne and findAll.
 * The magic is that such methods must not be implemented, and moreover it is
 * possible create new query methods working only by defining their signature!
 *
 * @author netgloo
 */
@Repository
public interface UserRepository extends CrudRepository<User, Long> {

    /**
     * Return the user having the passed email or null if no user is found.
     *
     *
     */

    Set<User> findAll ();
    Optional<User> findUserById(long id);
    Optional<User> findByEmail(String email);
    Optional<User> findByName(String name);
}

