package com.test.service.impl;

import java.util.List;

import com.test.dao.UserDao;
import com.test.entity.User;
import com.test.service.UserService;

public class UserServiceImpl implements UserService {
	private UserDao userDao;

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;

	}

	public UserDao getUserDao() {
		return userDao;
	}

	@Override
	public User login(String username, String password) {
		User user = new User(username, password);
		user.setUsername(username);
		user.setPassword(password);
		List<User> userlist = userDao.find(user);
		return userlist.get(0);  //返回数组第一个值
	}



	@Override
	public boolean registerUser(User user) {
		if (userDao.qureyById(user.getUsername()) != null) {
			return false;
		} else {
			userDao.save(user);
			return true;
		}
	}


}
