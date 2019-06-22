package com.supermarket.handler;

import com.supermarket.entity.User;
import com.supermarket.entity.UserDao;

import java.util.Map;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/supermarket")
@Controller()
public class UserManager
{
	//@Autowired
	private UserDao userDao=new UserDao();
	//@Autowired
	protected static User recent=new User();
	
/*
	@ModelAttribute
	public void putmap(Map<String, Object> map)
	{
		System.out.println("This is putmap");
		map.put("user", new User(null,null));
	}
*/
	
	@RequestMapping("/login")
	public String login(User user)
	{
		System.out.println("This is UserManager.login");
		if((recent.getUsername()==null) && userDao.Have(user.getUsername(),user.getPassword()))
		{
			System.out.println("loged in");
			recent=user;
			return "homepage";
		}
		else
		{
			System.out.println("loged failed");
			recent.setUsername(null);
			recent.setPassword(null);
			return "redirect:/login.jsp";
		}
	}
	
	@RequestMapping("/user_manage")
	public String home_user_manage(Map<String, Object> map){
		if(UserManager.recent.getUsername()==null)
		{
			System.out.println("No valid user");
			return "logout";
		}
		
		System.out.println("Homepage: into user_manage page");
		String ruser=recent.getUsername();
		if(ruser.equals("root"))
			map.put("isroot", true);
		else
			map.put("isroot", false);
		return "user_manage";
	}
	
	@RequestMapping("/change_password")
	public String change_pass(String oldpass,
							String newpass,
							String newreal)
	{
		System.out.println("In User Manage . change pass");
		if (newpass.equals(newreal))
		{
			if (userDao.Have(recent.getUsername(),oldpass))
			{
				userDao.Update(recent.getUsername(),newreal);
				System.out.println("Updated the password");
				return "homepage";
			}
			System.out.println("Change the password failed: "
					+ "Don't have this user"+recent.toString());
		}
		System.out.println("Change the password failed: two new passwords don't match!");
		return "user_manage";
		
	}
	
	@RequestMapping("/addUser")
	public String addUser(String aname, String apass,String bpass, Map<String, Object> map)
	{
		System.out.println("In User Manage addUser");
		
		if(userDao.HaveName(aname)==false)
		{
			if (apass.equals(bpass))
			{
				userDao.Add(aname,apass);
				System.out.println("New user added!");
				return "homepage";
			}
			else
				System.out.println("Two passwords don't match!");
		}
		else
		{
			System.out.println("User already exists!");
		}
		
		System.out.println("Add user failed!");
		String ruser=recent.getUsername();
		if(ruser.equals("root"))
			map.put("isroot", true);
		else
			map.put("isroot", false);
		return "user_manage";
		
	}
	
	@RequestMapping("/logout")
	public String home_logout()
	{
		System.out.println("Homepage: into logout page");
		recent.setUsername(null);
		recent.setPassword(null);
		return "logout";
	}
}


	
