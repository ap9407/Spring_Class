package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.model.MemberDTO;
import com.itbank.repository.MemberDAO;

@Service
public class MemberService {
	
	@Autowired 
	private MemberDAO dao;
	
	public List<MemberDTO> getList() {
		
		return dao.selectList();
	}

	public int insert(MemberDTO dto) {
		return dao.insert(dto);
	}

	public int delete(int idx) {
		return dao.delete(idx);
	}

	public MemberDTO getDTO(int idx) {
		return dao.selectone(idx);
	}

	public int update(MemberDTO dto) {
		
		return dao.update(dto);
	}

	
}
