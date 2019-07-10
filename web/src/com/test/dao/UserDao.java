package com.test.dao;

import java.util.List;

import com.test.entity.User;

public interface UserDao {
	public void save(User user);

	public List<User> find(User user);/* 返回值数组 */

	

	public User qureyById(String username);
}
