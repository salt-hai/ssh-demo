package com.test.action;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.test.entity.Idea;
import com.test.service.MsgService;
import com.test.tool.PageShow;

public class ShowAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private MsgService msgService;// Ҫ����ע��
	private Idea idea;
	private int pageNow = 1;// ��̬�ı� ҳ��ȡ��
	private int pageSize = 5;// �̶�����

	public String execute() {
		List MsgList = this.msgService.getAllMsg(pageNow, pageSize);
		if (MsgList.size() > 0) {// ѧ���б�
			Map session = ActionContext.getContext().getSession();
			Map request = (Map) ActionContext.getContext().get("request");
			session.put("XsList", MsgList);// ������session
			PageShow page = new PageShow(pageNow, msgService.findMsgSize(), pageSize);// ʵ������ҳ����
			request.put("page", page);// ���浽request
			return "success";
		}
		return "error";
	}

	public void setMsgService(MsgService msgService) {
		this.msgService = msgService;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPageNow() {
		return pageNow;
	}

	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}
}
