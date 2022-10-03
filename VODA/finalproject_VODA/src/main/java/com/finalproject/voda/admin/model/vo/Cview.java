package com.finalproject.voda.admin.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Cview {

	private int cViewNo;

	private Date cViewDate;
	
	private int cViewCount;
}
