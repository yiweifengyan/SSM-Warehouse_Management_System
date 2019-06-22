package com.supermarket.entity;

public class Good {
	String name;
	int series;
	int value;
	int volume;
	int amount;
	int small_amount;
	

	public Good(String name, int series, int value, int volume, int amount, int small_amount) {
		super();
		this.name = name;
		this.series = series;
		this.value = value;
		this.volume = volume;
		this.amount = amount;
		this.small_amount = small_amount;
	}


	public Good(String name, int series, int value, int volume) {
		super();
		this.name = name;
		this.series = series;
		this.value = value;
		this.volume = volume;
		this.amount = 0;
		this.small_amount = 0;
	}


	public int getValue() {
		return value;
	}


	public void setValue(int value) {
		this.value = value;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public int getSeries() {
		return series;
	}


	public void setSeries(int series) {
		this.series = series;
	}


	public int getVolume() {
		return volume;
	}


	public void setVolume(int volume) {
		this.volume = volume;
	}


	public int getAmount() {
		return amount;
	}


	public void setAmount(int amount) {
		this.amount = amount;
	}


	public int getSmall_amount() {
		return small_amount;
	}


	public void setSmall_amount(int small_amount) {
		this.small_amount = small_amount;
	}



	public Good() {
		super();
	}


	public boolean needPurchase() {
		if (amount<small_amount)
			return true;  
		else
			return false;
	}
}
