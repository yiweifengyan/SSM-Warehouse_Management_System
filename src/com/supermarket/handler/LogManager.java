package com.supermarket.handler;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.supermarket.entity.*;

@RequestMapping("/supermarket")
@Controller()
public class LogManager {

	protected static LogDao logDao=new LogDao();
	
	
	@RequestMapping("/log_manage")
	public String home_log_manage(Map<String, Object> map){
		if(UserManager.recent.getUsername()==null)
		{
			System.out.println("No valid user");
			return "logout";
		}
		System.out.println("Homepage: into log_manage page");
		map.put("lognum",logDao.num());
		map.put("logs", logDao.getLogs());
		return "log_manage";
	}
	
}
