package com.multi.werin.landmark;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LandmarkInfoDAO {

	@Autowired
	SqlSessionTemplate my;
	
	@Autowired
	LandmarkInfo jeju;
	
	public StringBuilder insert(String ko) {
		//db처리하기 전 전처리/후처리 
		//db처리 요청 
		return jeju.jejuinsert(ko);
	}
	
	public List<LandmarkInfoVO> list(String ko) {
		//db처리하기 전 전처리/후처리 
		//db처리 요청 
		List<LandmarkInfoVO> list = my.selectList("landmarkInfo.list");
		return list;
	}

	
}
