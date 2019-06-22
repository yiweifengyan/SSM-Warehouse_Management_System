package com.supermarket.handler;

import com.supermarket.entity.GoodsDao;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.supermarket.entity.Good;

//Model：从内传到外的参数，Map(几乎所有东西都可以往里面放) 
//View: 从内传到外的视图：HTML,JSP
//ModelandView: Spring 实际传输时，将上述全部统一打包成mv，内部实现，知道即可
//Controller：就是下面这个

@RequestMapping("/supermarket")
@Controller()
public class GoodsManager {
	
	private GoodsDao goodsDao=new GoodsDao();
	
	
	@RequestMapping("/warehouse")
	public String show_warehouse(Map<String, Object> map)
	{
		if(UserManager.recent.getUsername()==null)
		{
			System.out.println("No valid user");
			return "logout";
		}
		
		System.out.println("Into warehouse page");
		map.put("value",goodsDao.getValue());
		map.put("volume",goodsDao.getVolume());
		map.put("usage",goodsDao.usage());
		map.put("goods", goodsDao.getGoods());
		return "warehouse";
	}
	
	@RequestMapping("/in_out")
	public String in_out(Map<String, Object> map){
		if(UserManager.recent.getUsername()==null)
		{
			System.out.println("No valid user");
			return "logout";
		}
		System.out.println("Into in_out page");
		map.put("goods", goodsDao.getGoods());
		map.put("good",new Good("To be filled", 0, 0, 1, 0, 0));
		return "in_out";
	}
	
	@RequestMapping("/changeGoodAmount")
	public String changeAmount(int series, int amount, int types, Map<String, Object> map)
	{
		System.out.println("Into Goods Manage . changeAmount");
		if ((types==1) && (amount>0))
		{
			goodsDao.changeGoodAmount(series, amount);
			// Add a log
			LogManager.logDao.add(UserManager.recent.getUsername(),series,amount);
		}
		else
		{
			if ((types==-1)&&(goodsDao.getGoodAmount(series)<amount))
			{
				System.out.println("No enough goods!"+series);
				map.put("goods", goodsDao.getGoods());
				map.put("good",new Good("To be filled", 0, 0, 1, 0, 0));
				return "in_out";
			}
			else 
			{
				if ((types==-1)&&(amount>0))
				{
					goodsDao.changeGoodAmount(series, amount*(-1));	
					// Add a log
					LogManager.logDao.add(UserManager.recent.getUsername(),series,amount*(-1));
				}
				else
				{
					System.out.println("Not Valid inputs!");
					map.put("goods", goodsDao.getGoods());
					map.put("good",new Good("To be filled", 0, 0, 1, 0, 0));
					return "in_out";
				}
			}
		}
		
		//准备进入仓库界面
		map.put("value",goodsDao.getValue());
		map.put("volume",goodsDao.getVolume());
		map.put("usage",goodsDao.usage());
		map.put("goods", goodsDao.getGoods());
		
		return "warehouse";
	}
	
	@RequestMapping("/addGood")
	public String addGood(String name, int series, int value, int volume, int amount, int small_amount, Map<String, Object> map)
	{
		System.out.println("Adding Good");
		if (goodsDao.have(series))
		{
			System.out.println("Same series exists!");
			map.put("good",new Good("To be filled", 0, 0, 1, 0, 0));
			return "addGood";
		}
		else
		{
			if ((amount<0)||(value<1)||(volume<1)||(small_amount<0)||(series<0))
			{
				System.out.println("Number<0, invalid input!");
				map.put("good",new Good("To be filled", 0, 0, 1, 0, 0));
				return "addGood";
			}
			else
			{
				System.out.println("Good added");
				goodsDao.add(name, series, value, volume, amount, small_amount);
				
				//Add a log
				LogManager.logDao.add(UserManager.recent.getUsername(), series, amount);
				
				//进入仓库
				map.put("value",goodsDao.getValue());
				map.put("volume",goodsDao.getVolume());
				map.put("usage",goodsDao.usage());
				map.put("goods", goodsDao.getGoods());
				
				return "warehouse";
			}
		}
	}
	
	@RequestMapping("/addGoodPage")
	public String addGoodPage(Map<String, Object> map)
	{
		if(UserManager.recent.getUsername()==null)
		{
			System.out.println("No valid user");
			return "logout";
		}
		
		System.out.println("Into Goods Manage . addGood");
		map.put("good",new Good("To be filled", 0, 0, 1, 0, 0));
		return "addGood";
	}
	
}
