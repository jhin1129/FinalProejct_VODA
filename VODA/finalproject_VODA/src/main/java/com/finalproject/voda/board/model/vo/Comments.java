package com.finalproject.voda.board.model.vo;


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
	
	String cmdate;
	
	String cmwriterid;
	
	String cmstatus;
	
}
