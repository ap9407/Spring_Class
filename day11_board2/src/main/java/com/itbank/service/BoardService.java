package com.itbank.service;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.model.BoardDTO;
import com.itbank.repository.BoardDAO;

@Service
public class BoardService {
	
	@Autowired private BoardDAO dao;
	private final String saveDirectory = "D:\\upload_board2";

	public BoardService() {
		File dir = new File(saveDirectory);
		if (dir.exists() == false) {
			dir.mkdirs();
		}
	}
	
	public List<BoardDTO> getListAll(Integer page) {
		HashMap<String, Object> param = new HashMap<String, Object>();
		return dao.selectAll(param);
	}

	public BoardDTO get(int idx) {
		dao.update(idx);
		return dao.selectOne(idx);
	}

	public int write(BoardDTO dto) {
		if(dto.getUploadfilefile().getSize() != 0) {
			String fileName = dto.getIdx() + "_" + dto.getUploadfilefile().getOriginalFilename() + "." +dto.getUploadfilefile().getContentType().split("/")[1];
			File dest = new File(saveDirectory, fileName);
			try {
				dto.getUploadfilefile().transferTo(dest);
				dto.setUploadfile(fileName);
				return dao.insert(dto);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
			return dao.insert(dto);
		}else {
			return dao.insertWithoutFile(dto);
		}
	}

	public int modify(BoardDTO dto) {
		return dao.modify(dto);
	}

	public int delete(int idx) {
		return dao.delete(idx);
	}

}
