package com.itbank.repository;

import java.util.HashMap;
import java.util.List;

import com.itbank.model.BoardDTO;

public interface BoardDAO {

	List<BoardDTO> selectAll(HashMap<String, Object> param);

	BoardDTO selectOne(int idx);

	int insert(BoardDTO dto);

	int modify(BoardDTO dto);

	int delete(int idx);

	void update(int idx);

	int insertWithoutFile(BoardDTO dto);

}
