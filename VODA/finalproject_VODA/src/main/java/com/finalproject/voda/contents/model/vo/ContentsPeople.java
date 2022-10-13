package com.finalproject.voda.contents.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ContentsPeople {	
	private int c_no;
	private int people_no;
	private String people_name;
	private String cp_role;
	private String cp_img;
	private String cp_oimg;	
}
