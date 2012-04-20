package com.sinomaster.dao.commons.impl;

import java.util.List;

import com.sinomaster.dao.commons.IBaseDao;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;
public class BaseDaoImpl extends SqlMapClientDaoSupport  implements IBaseDao {

	public void add(Object o) {
		 getSqlMapClientTemplate().insert("");
		 
//		sqlMapClientTemplate
		// TODO Auto-generated method stub

	}

	public void delete(String id) {
		// TODO Auto-generated method stub

	}

	public void update(Object o) {
		// TODO Auto-generated method stub

	}

	public List find() {
		List list=getSqlMapClientTemplate().queryForList("listUsers");
		return list;
	}

	public Object find(String id) {
		// TODO Auto-generated method stub
		return null;
	}

}
