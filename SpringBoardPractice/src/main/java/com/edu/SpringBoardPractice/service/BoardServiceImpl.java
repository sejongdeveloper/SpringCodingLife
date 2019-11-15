package com.edu.SpringBoardPractice.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.edu.SpringBoardPractice.domain.BoardDTO;
import com.edu.SpringBoardPractice.util.PageMaker;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class BoardServiceImpl {
	
	private SqlSession session;
	
	public String today() {
		return session.selectOne("board.today");
	}
	
	public int total() {
		return session.selectOne("total");
	}
	
	public List<BoardDTO> boardSelectList(PageMaker pageMaker) {
		return session.selectList("board.selectList", pageMaker);
	}
	
	public BoardDTO boardSelectOne(int bno) {
		return session.selectOne("board.selectOne", bno);
	}
	
	public void boardUpdate(BoardDTO boardDTO) {
		session.update("board.update", boardDTO);
	}
	
	public void boardDelete(int bno) {
		session.delete("board.delete", bno);
	}
}
