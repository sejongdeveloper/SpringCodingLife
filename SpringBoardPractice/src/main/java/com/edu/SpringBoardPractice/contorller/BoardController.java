package com.edu.SpringBoardPractice.contorller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.edu.SpringBoardPractice.domain.BoardDTO;
import com.edu.SpringBoardPractice.service.BoardServiceImpl;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@AllArgsConstructor
@Log4j
public class BoardController {

	private BoardServiceImpl service;
	
	@GetMapping("boardSelectOne")
	public String boardSelectOne(int bno, Model model) {
		log.info("boardSelectOne");
		log.info(bno);
		model.addAttribute("boardDTO", service.boardSelectOne(bno));
		
		return "boardSelectOne";
	}
	
	@GetMapping("boardInsert")
	public String boardInsertForm() {
		log.info("boardInsertForm");
		return "boardInsert";
	}
	
	@PostMapping("boardInsert")
	public String boardInsert(BoardDTO boardDTO) {
		log.info("boardInsert");
		log.info(boardDTO);
		service.boardInsert(boardDTO);
		return "redirect:/";
	}
	
	@GetMapping("boardDelete")
	public String boardDelete(int bno) {
		log.info("boardDelete");
		log.info(bno);
		service.boardDelete(bno);
		
		return "redirect:/";
	}
	
	@GetMapping("boardUpdate")
	public String boardUpdateForm(int bno, Model model) {
		log.info("boardDelete");
		log.info(bno);
		model.addAttribute("boardDTO", service.boardSelectOne(bno));
		
		return "boardUpdate";
	}
	
	@PostMapping("boardUpdate")
	public String boardUpdate(BoardDTO boardDTO) {
		log.info("boardUpdate");
		log.info(boardDTO);
		service.boardUpdate(boardDTO);
		
		return "redirect:/boardSelectOne?bno=" + boardDTO.getBno();
	}
}
