package com.sinomaster.core.commons.impl;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.sinomaster.core.commons.IBaseService;
import com.sinomaster.dao.commons.IBaseDao;


public class BaseServiceImpl implements IBaseService {

	private IBaseDao baseDao;
	private final Log log=LogFactory.getLog(getClass());
	public void setBaseDao(IBaseDao baseDao) {
		this.baseDao = baseDao;
	}

	public void add(Object o) {
		// TODO Auto-generated method stub

	}

	public void delete(String id) {
		// TODO Auto-generated method stub

	}

	public void update(Object o) {
		// TODO Auto-generated method stub

	}

	public List find() {
		log.info("在Service");
		return baseDao.find();
	}

	public Object find(String id) {
		return null;
	}

}
