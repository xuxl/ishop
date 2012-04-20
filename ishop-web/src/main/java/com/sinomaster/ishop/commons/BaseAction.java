package com.sinomaster.ishop.commons;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sinomaster.core.commons.IBaseService;

/**
 * Action超类
 * 
 * @author xuxiaolong
 * @date 2012-04-13
 */

public class BaseAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private static Log log = LogFactory.getLog(BaseAction.class);
	private IBaseService baseService;

	public void setBaseService(IBaseService baseService) {
		this.baseService = baseService;
	}

	public HttpServletRequest getRequest() {
		ActionContext context = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) context
				.get(ServletActionContext.HTTP_REQUEST);
		return request;
	}

	@Override
	public String execute() throws Exception {

		getRequest().setAttribute("list", baseService.find());
		log.info("INFO:执行查询 ");
		
		return SUCCESS;
	}

}
