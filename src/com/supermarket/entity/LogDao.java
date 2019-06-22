package com.supermarket.entity;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class LogDao {
	private List<Log> logList=new ArrayList<Log>();
	
	public Collection<Log> getLogs()
	{
		return logList;
	}
	
	public void add(String username, int series, int damount)
	{
		Log inLog= new Log(username, series, damount);
		logList.add(inLog);
	}
	
	public int num() {
		return logList.size();
	}

	public LogDao() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
