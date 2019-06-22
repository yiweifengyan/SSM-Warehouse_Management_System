package com.supermarket.entity;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Log {
private String operator;
private String time;
private int goodseries;
private int amount;

public Log(String operator, int goodseries, int amount) {
	super();
	this.operator = operator;
	Date dNow = new Date( );
    SimpleDateFormat ft = new SimpleDateFormat ("yyyy.MM.dd 'at' hh:mm:ss a zzz");
	this.time=ft.format(dNow);
	this.goodseries = goodseries;
	this.amount = amount;
}


public String getOperator() {
	return operator;
}


public String getTime() {
	return time;
}


public int getGoodseries() {
	return goodseries;
}


public int getAmount() {
	return amount;
}


}
