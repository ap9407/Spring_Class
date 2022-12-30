package com.itbank.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.service.BookService;

@Controller
public class HomeController {
	// [요청]에 따라서 실행할 [함수, 반환형이 응답을 만드는데 사용된다]를 작성한다.
	@Autowired
	private BookService bookservice;
	
	@RequestMapping("/")
	public ModelAndView home() {
		ModelAndView mav = new ModelAndView("home");
		String version = bookservice.getVersion();
		mav.addObject("version", version);
		return mav;
	}
	
}
