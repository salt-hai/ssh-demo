package com.test.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.test.dao.ShowMsgDao;

public class ShowMsgDaoImpl implements ShowMsgDao {
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	Session session = sessionFactory.openSession();

	@Override
	public List getAllMsg(int pageNow, int pageSize) {

		String hql = "from idea";
		Query query = session.createQuery(hql);// Ö´ÐÐ²éÑ¯²Ù×÷
		query.setFirstResult((pageNow - 1) * pageSize);
		query.setMaxResults(pageSize);
		List MsgList = query.list();
		session.close();
		session = null;
		if (MsgList.size() > 0) {
			return MsgList;
		}

		return null;
	}

	@Override
	public int findMsgSize() {

		String hql = "from idea";
		int size = session.createQuery(hql).list().size();
		session.close();
		return size;

	}

}
