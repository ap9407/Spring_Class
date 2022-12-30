package com.itbank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.model.BookDTO;
import com.itbank.service.BookService;

@Controller
public class BookController {
	
	@Autowired
	private BookService bookService;
	
	@GetMapping("/list")
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView();
		
		List<BookDTO> list = bookService.getList();
		mav.addObject("list", list);
		return mav;
	}
	
	@GetMapping("/detail")
	public ModelAndView detail(int idx) {
		ModelAndView mav = new ModelAndView();
		BookDTO dto = bookService.getDTO(idx);
		mav.addObject("dto", dto);
		return mav;
	}
	
	@PostMapping("/list")
	public ModelAndView search(String search) {
		ModelAndView mav = new ModelAndView();
		List<BookDTO> list = bookService.getList_FindByName(search);
		mav.addObject("list", list);
		return mav;
		
		
		
	}
	
	@GetMapping("/insert")
	public void insert() {}
	
	@PostMapping("/insert")
	public String insert(BookDTO dto) {
		int row = bookService.insert(dto);
		System.out.println(row != 0 ? "추가성공" : "추가실패");
		return "redirect:/list";
	}
	@GetMapping("/modify")
	public ModelAndView update(int idx) {
		ModelAndView mav = new ModelAndView();
		BookDTO dto = bookService.getDTO(idx);
		mav.addObject("dto", dto);
		return mav;
	}
	
	@PostMapping("/modify")
	public String update(BookDTO dto) {
		int row = bookService.update(dto);
		System.out.println(row != 0 ? "수정성공" : "수정실패");
		
		return "redirect:/list";
	}
	
	@GetMapping("/delete")
	public String delete(int idx) {
		int row = bookService.delete(idx);
		System.out.println(row != 0 ? "삭제성공" : "삭제실패");
		return "redirect:/list";
	}
}
