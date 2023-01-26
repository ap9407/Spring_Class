package com.itbank.repository;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.itbank.model.HomePlusDTO;

@Repository
public interface HomeplusDAO {

	@Select("select * from homeplus order by idx")
	List<HomePlusDTO> selectList();
	

}
