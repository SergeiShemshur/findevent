package com.example.service;


import com.example.model.User;
import com.example.utility.UserDto;
import com.example.repository.UserDao;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import java.util.Optional;
import java.util.Set;

@Service
public class UserServiceImpl implements UserService {

    private static final Logger LOG = LoggerFactory.getLogger(UserServiceImpl.class);

    @Autowired
    private  UserDao userRepository;

    @Override
    public Optional<User> getUserById(long id) {
        LOG.debug("Getting user={}", id);
        return userRepository.findUserById(id);
    }

    @Override
    public Optional<User> getUserByEmail(String email) {
        LOG.debug("Getting user=",email);
        return userRepository.findByEmail(email);
    }

    @Override
    public Optional<User> getUserByName(String name) {
        LOG.debug("Getting user=",name);
        return userRepository.findByName(name);
    }
    @Override
    public Set<User> getAllUsers() {
        LOG.debug("Getting all users ");
        return userRepository.findAll();
    }

    @Override
    public User create(UserDto form) {
        User user = new User();
        user.setEmail(form.getEmail());
        user.setName(form.getName());
        user.setPasswordHash(new BCryptPasswordEncoder().encode(form.getPassword()));
        user.setRole(form.getRole());
        return userRepository.save(user);
    }


}
