package com.test.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SQLQuery;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.test.dao.UserDao;
import com.test.entity.User;

public class UserDaoImpl extends HibernateDaoSupport implements UserDao {

	@Override
	public void save(User user) {
		this.getHibernateTemplate().save(user);
	}

	@Override
	public List<User> find(User user) {
		String queryString = "from User u where u.username=? and u.password=? "; /* HQL查询 */
		List<Object> param = new ArrayList<Object>();
		if (user.getUsername() != null) {
			param.add(user.getUsername());
		}
		if (user.getPassword() != null) {
			param.add(user.getPassword());
		}
		return getHibernateTemplate().find(queryString, param.toArray());
	}

	/* 根据名字查询 是否相同用户*/
	@Override
	public User qureyById(String username) {
		List list = this.getHibernateTemplate()
				.find("select user from User user where user.username='" + username + "'");
		if (list.size() == 0) {
			return null;
		} else {
			return (User) list.get(0);
		}
	}
}