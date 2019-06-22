package com.supermarket.entity;
import java.util.*;

public class UserDao {
	private List<User> userList=new ArrayList<User>();

	public boolean Have(String username, String password)
	{
		  User inuser = new User(username,password);
		  for (int i = 0, size = userList.size(); i < size; i++) 
		  {
			  	 if (size<1)
			  	 	return false;
		         User current = userList.get(i);
		         if (current.equals(inuser))
		        	 return true;
		  }
		  return false;
	}
	
	public boolean HaveName(String username)
	{
		  for (int i = 0, size = userList.size(); i < size; i++) 
		  {
			  	 if (size<1)
			  	 	return false;
		         User current = userList.get(i);
		         if (username.equals(current.getUsername()))
		        	 return true;
		  }
		  return false;
	}
	
	public void Add(String username, String password)
	{
		User inuser = new User(username,password);
		userList.add(inuser);
	}

	public void Update(String username, String password)
	{
		  for (int i = 0, size = userList.size(); i < size; i++) 
		  {
		         User current = userList.get(i);
		         if (current.getUsername().equals(username))
		        	 current.setPassword(password);
		  }
	}


	public UserDao() {
		super();
		User rootUser=new User("root","rootuser");
		this.userList.add(rootUser);
	}
	
}
