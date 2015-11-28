package com.example;

import com.example.model.User;
import com.example.repository.UserDao;
import com.example.service.UserService;
import com.example.utility.Role;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Optional;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = DemoApplication.class)
@WebAppConfiguration
public class DemoApplicationTests {

	@Autowired
	UserDao userDao;

	@Autowired
	UserService userService;

	@Test
	public void contextLoads() throws Exception {
		User user =new User();
		user.setRole(Role.USER);
		user.setEmail("EMAIL  IT WORKs");
		user.setPasswordHash("3333");

		userDao.save(user);
		Optional<User> userOptional =userDao.findUserById(1);
		System.out.println(userOptional);
	}

}
