package com.test.service;

import com.test.entity.User;

public interface UserService {


	public User login(String username, String password);


	public boolean registerUser(User user);
}
