package com.finalproject.voda.order.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Order {
	private int pno;
	
	private int payno;
	
	private int mno;
	
	private Date odate;
	
	private int oqtt;
	
	private String oadress;
	
	private int oprice;
	
	private String pname;
	
	private String pcategory;
	
	private String pmadecompany;
	
	private String omessage;
	
}
