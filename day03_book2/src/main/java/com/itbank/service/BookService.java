package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.model.BookDTO;
import com.itbank.repository.BookDAO;

@Service
public class BookService {
	
	@Autowired
	private BookDAO dao;
	
	public String getVersion() {
		String version = dao.selectVersion();
		return version;
	}

	public List<BookDTO> getList() {
		
		return dao.selectList();
	}

	public int insert(BookDTO dto) {
		
		return dao.insert(dto);
	}

	public int delete(int idx) {
		
		return dao.delete(idx);
	}

	public BookDTO getDTO(int idx) {
		return dao.selectOne(idx);
	}

	public int update(BookDTO dto) {
		return dao.update(dto);
	}

	public List<BookDTO> getList_FindByName(String search) {
		return dao.selectListFindByName(search);
	}

}
