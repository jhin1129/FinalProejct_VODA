package com.finalproject.voda.board.model.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Board {
	private int rowNum;
	
	private int bno;
	
	private int bWriterNo; // M_NO
	
	private String bWriterId;
	
	private String bType;
	
	private String bTitle;
	
	@DateTimeFormat(pattern = "yyyyMMdd")	
	private Date bCreateDate;
	
	private String bContent;
	
	private String bOriginalFileName;
	
	private String bRenamedFileName;
	
	private int bView;
	
	private String bStatus;
	
	private String bAnswerStatus;
	
	
}

