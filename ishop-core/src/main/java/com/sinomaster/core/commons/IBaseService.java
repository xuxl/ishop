package com.sinomaster.core.commons;

import java.util.List;


/**
 * Action超类
 * @author xuxiaolong
 * @date 2012-04-13
 */

public interface IBaseService{
	
	public void add(Object o);
	
	public void delete(String id);
	
	public void update(Object o);
	
	
	public List find();
	
	public Object find(String id);
	
	
	
	


}
