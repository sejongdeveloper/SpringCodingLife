package com.edu.SpringBoardPractice.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class BoardReplyDTO {

	private int rno;
	private int bno;
	
	private String reply;
	private String replyer;
	private Date insertDate;
	private Date updateDate;
	
}
