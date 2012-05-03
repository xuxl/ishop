package com.sinomaster.util;

import java.util.LinkedList;

/**
 * 队列-先进先出
 * @author xuxiaolong
 *
 */
public class Queue {

	private static LinkedList<Object> list = new LinkedList<Object>();

	public void push(Object o) {
		list.addLast(o);
	}
	
	public Object get(){
		
		return list.removeFirst();
	}
	
	public void clear(){
		list.clear();
	}
	
	
}
