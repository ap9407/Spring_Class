package com.itbank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.model.MemberDTO;
import com.itbank.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;	

	
	@GetMapping("/ex01")
	public ModelAndView ex01() {
		ModelAndView mav = new ModelAndView();
	
	List<MemberDTO> list = memberService.getList();
	mav.addObject("list", list);
	return mav;
	
	}
	
	@GetMapping("/ex02")
	public void ex02() {}
	
	@PostMapping("/ex02")
	public String ex02(MemberDTO dto) {
		int row = memberService.insert(dto);
		System.out.println(row != 0 ? "추가성공" : "추가실패");
		return "redirect:/ex01";
	}
	
	
	@GetMapping("/delete")
	public String delete(int idx) {
		int row = memberService.delete(idx);
		System.out.println(row != 0 ? "삭제성공" : "삭제실패");
		return "redirect:/ex01";
	}
	
	@GetMapping("/update")
	public ModelAndView update(int idx) {
		ModelAndView mav = new ModelAndView();
		MemberDTO dto = memberService.getDTO(idx);
		mav.addObject("dto", dto);
		return mav;
	}
	
	@PostMapping("/update")
	public String update(MemberDTO dto) {
		int row = memberService.update(dto);
		System.out.println(row != 0 ? "수정성공" : "수정실패");
		
		return "redirect:/ex01";
	}	
	
}
