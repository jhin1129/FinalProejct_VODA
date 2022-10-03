package com.finalproject.voda.admin.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Visit {

	private int visitNo;

	private Date visitDate;
	
	private int visitCount;
}
