package com.test.dao;

import java.util.List;

import com.test.entity.Admin;

public interface AdminDao {
	public List<Admin> find(Admin admin);
}
