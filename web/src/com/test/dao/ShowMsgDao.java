package com.test.dao;

import java.util.List;

public interface ShowMsgDao {
	public List getAllMsg(int pageNow, int pageSize); // 查询所有信息，分页

	public int findMsgSize();//留言条数
}
