package com.finalproject.voda.board.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Comments {

	int cmNo;
	
	int bNo;
	
	String cmContent;
	
	Date cmDate;
	
//	String cmWriterNo; 컬럼추가
	
//	String cmWriterId; 컬럼추가
	
//	String cmStatus; 컬럼추가
	
}
