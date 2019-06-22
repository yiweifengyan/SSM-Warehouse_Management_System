package com.supermarket.entity;
import java.util.*;

public class GoodsDao {
	private List<Good> goodList=new ArrayList<Good>();
	private int value=0;
	private int volume=0;
	private int capacity=500000;
	
	public GoodsDao() {
		super();
	}
	
	public int usage()
	{
		return this.volume*100/this.capacity;
	}
	
	public int getValue() {
		return value;
	}

	public int getCapacity() {
		return capacity;
	}
	
	public Collection<Good> getGoods()
	{
		return goodList;
	}
	
	public int getVolume()
	{
		/*
		int sum=0;
		for (int i = 0, size = goodList.size(); i < size; i++) 
		  {
		         Good current = goodList.get(i);
		         sum=sum+current.getAmount()*current.getVolume();
		  }
		volume=sum;
		*/
		return this.volume;
	}
	
	public boolean have(int series)
	{
		for (int i = 0, size = goodList.size(); i < size; i++) 
		  {
		         Good current = goodList.get(i);
		         if(current.getSeries()==series)
		        	 return true;
		  }
		return false;
	}
	
	public void add(String name, int series, int value, int volume, int amount, int small_amount)
	{
		Good inGood= new Good(name, series, value, volume, amount, small_amount);
		this.value=this.value+value*amount;
		this.volume=this.volume+volume*amount;
		goodList.add(inGood);
	}
	
	public int getGoodAmount(int series)
	{
		for (int i = 0, size = goodList.size(); i < size; i++) 
		  {
		         Good current = goodList.get(i);
		         if (current.getSeries() == series)
		        	 return current.getAmount();
		  }
		return 0;
	}
	
	public boolean setGoodName(int series, String newname)
	{
		for (int i = 0, size = goodList.size(); i < size; i++) 
		  {
		         Good current = goodList.get(i);
		         if (current.getSeries() == series)
		         {
		        	 current.setName(newname);
		        	 return true;
		         }
		  }
		return false;
	}
	
	public boolean changeGoodAmount(int series, int damount)
	{
		for (int i = 0, size = goodList.size(); i < size; i++) 
		  {
		         Good current = goodList.get(i);
		         if (current.getSeries() == series)
		         {
		        	 current.setAmount(current.getAmount()+damount);
		        	 this.value=this.value+current.getValue()*damount;
		        	 this.volume=this.volume+current.getVolume()*damount;
		        	 return true;
		         } 
		  }
		return false;
	}
	
	public boolean delete(int series)
	{
		for (int i = 0, size = goodList.size(); i < size; i++) 
		  {
		         Good current = goodList.get(i);
		         if (current.getSeries() == series)
		         {
		        	 goodList.remove(i);
		        	 return true;
		         }	 
		  }
		return false;
	}

	
	
}
