package com.itbank.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.itbank.model.HomePlusDTO;
import com.itbank.service.HomeplusService;

@RestController
public class HomeplusController {
	
	@Autowired private HomeplusService homeplusService;
	
	private ObjectMapper mapper = new ObjectMapper();
	
	@GetMapping("/homeplus/product")
	public String productList() throws IOException{
		// 자바 객체를 JSON 규칙에 맞게, 문자열 형태로 변환하여 반환한다.
		// 자바 객체를 JSON 문자열로
		
		List<HomePlusDTO> list = homeplusService.getProductList();
		String jsonString = mapper.writeValueAsString(list);
		System.out.println(jsonString);
		return jsonString;
		
	}
	
}
