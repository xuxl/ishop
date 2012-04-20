package com.sinomaster.dao.commons;

import java.util.List;

/**
 * Hello world!
 *
 */
public interface IBaseDao 
{
	public void add(Object o);
	
	public void delete(String id);
	
	public void update(Object o);
	
	public List find();
	
	public Object find(String id);
}
