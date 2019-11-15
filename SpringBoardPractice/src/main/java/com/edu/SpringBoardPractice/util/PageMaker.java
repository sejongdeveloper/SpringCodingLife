package com.edu.SpringBoardPractice.util;

import lombok.Data;

@Data
public class PageMaker {

	private int curPage = 1;
	private int pageSize = 10;
	private int blockSize = 5;
	
	private int totalData;
	private int totalPage;
	
	private int startPage;
	private int startBlock;
	private int endBlock;
	
	public void setting(int totalData) {
		this.totalData = totalData;
		
		totalPage = (int)Math.ceil(totalData/(double)pageSize);
		
		startPage = (curPage - 1) * pageSize;
		
		startBlock = (int)(curPage/(blockSize+0.1)) * blockSize + 1;
		endBlock = startBlock + blockSize -1;
		if(endBlock > totalPage) endBlock = totalPage;
	}
}
