package com.test.dao;

import java.util.List;

public interface ShowMsgDao {
	public List getAllMsg(int pageNow, int pageSize); // ��ѯ������Ϣ����ҳ

	public int findMsgSize();//��������
}
