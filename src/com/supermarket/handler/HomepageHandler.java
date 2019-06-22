package com.supermarket.handler;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/supermarket")
@Controller()
public class HomepageHandler {
	
	@RequestMapping("/homepage")
	public String home_homepage(){
		if(UserManager.recent.getUsername()==null)
		{
			System.out.println("No valid user");
			return "logout";
		}
		else
		{
			System.out.println("Go into Homepage");
			return "homepage";
		}
		
	}
	
	
}
