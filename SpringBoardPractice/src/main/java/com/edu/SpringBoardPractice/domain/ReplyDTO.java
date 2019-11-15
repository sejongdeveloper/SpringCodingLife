package com.edu.SpringBoardPractice.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class ReplyDTO {

	private int rno;
	private String writer;
	private String contents;
	private int bnoGroup;
	private int step;
	private int spacing;
	private Date insertDate;
	private Date updateDate;
	
}
