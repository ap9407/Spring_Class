package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.model.HomePlusDTO;
import com.itbank.repository.HomeplusDAO;

@Service
public class HomeplusService {
	
	@Autowired private HomeplusDAO dao;

	public List<HomePlusDTO> getProductList() {

		return dao.selectList();
	}

}
