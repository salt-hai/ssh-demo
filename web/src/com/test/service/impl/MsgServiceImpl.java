package com.test.service.impl;

import java.util.List;

import com.test.dao.ShowMsgDao;
import com.test.service.MsgService;

public class MsgServiceImpl implements MsgService {
	private ShowMsgDao showMsgDao;

	@Override
	public List getAllMsg(int page, int pageSize) {
		List MsgList = this.showMsgDao.getAllMsg(page, pageSize);
		return MsgList;
	}

	@Override
	public int findMsgSize() {
		// TODO Auto-generated method stub
		return this.showMsgDao.findMsgSize();
	}

}
