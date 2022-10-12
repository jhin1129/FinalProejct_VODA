package com.finalproject.voda.board.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Comments {

	int cmno;
	
	int bno;
	
	String cmcontent;
	
	Date cmdate;
	
	String cmwriterno;
	
	String cmwriterid;
	
	String cmstatus;
	
}
