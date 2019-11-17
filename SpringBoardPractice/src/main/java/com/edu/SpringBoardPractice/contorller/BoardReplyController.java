package com.edu.SpringBoardPractice.contorller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.edu.SpringBoardPractice.domain.BoardReplyDTO;
import com.edu.SpringBoardPractice.service.BoardServiceImpl;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RestController
@AllArgsConstructor
@Log4j
public class BoardReplyController {

	private BoardServiceImpl service;
	
	@GetMapping("reply")
	public String test() {
		log.info("json 변환완료");
		return "{\"hello\":\"hahaha\"}";
	}
	
	@PostMapping(value = "reply", produces = "application/text; charset=utf8")
	public String replyInsert(@RequestBody BoardReplyDTO boardReplyDTO) {
		log.info("reply");
		log.info(boardReplyDTO);
		service.replyInsert(boardReplyDTO);
		return "댓글성공";
	}
	
}
