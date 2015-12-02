package com.example.service;


import com.example.model.User;
import com.example.utility.UserDto;

import java.util.Optional;

public interface UserService {
    Optional<User> getUserById(long id);

    Optional<User> getUserByEmail(String email);

    Iterable<User> getAllUsers();
    User create(UserDto form);
    Optional<User> getUserByName(String name);
}
