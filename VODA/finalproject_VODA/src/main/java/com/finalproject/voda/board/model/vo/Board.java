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
	
	private int mno; // M_NO
	
	private String mid; // M_ID
	
	private String btype;
	
	private String btitle;
	
	@DateTimeFormat(pattern = "yyyyMMdd")	
	private Date bcreatedate;
	
	private String bcontent;
	
	private String boriginalfilename;
	
	private String brenamedfilename;
	
	private int bview;
	
	private String bstatus;
	
	private String banswerstatus;
	
	
}

