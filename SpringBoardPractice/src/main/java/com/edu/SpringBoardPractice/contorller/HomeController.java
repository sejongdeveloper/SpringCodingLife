package com.edu.SpringBoardPractice.contorller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.edu.SpringBoardPractice.service.BoardServiceImpl;
import com.edu.SpringBoardPractice.util.PageMaker;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@AllArgsConstructor
@Log4j
public class HomeController {
	
	private BoardServiceImpl service;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, PageMaker pageMaker) {
		log.info("Welcome home! The client locale is " + locale);
		pageMaker.setting(service.total());
		log.info(pageMaker);
		model.addAttribute("serverTime", service.today());
		model.addAttribute("boardSelectList", service.boardSelectList(pageMaker));
		model.addAttribute("pageMaker", pageMaker);
		return "home";
	}
	
}
