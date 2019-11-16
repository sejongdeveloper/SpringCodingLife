package com.edu.SpringBoardPractice.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class BoardDTO {

	private int bno;
	private int views;
	private String writer;
	private String title;
	private String contents;
	private Date insertDate;
	private Date updateDate;
	
	private int replyCnt;
}
