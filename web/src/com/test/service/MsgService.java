package com.test.service;

import java.util.List;

public interface MsgService {
	public List getAllMsg(int page, int pageSize);

	public int findMsgSize();
}
