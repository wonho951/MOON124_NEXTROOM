package com.nextroom.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nextroom.vo.PartyVo;

@Repository
public class MypageDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	//21-10-11 by 대니
	// 마이페이지 파티관리
	public List<PartyVo> mypagePartyManage(int userNo, int startRnum, int endRnum, String partyJoinSelect) {
		
		Map<String, Object> partyManageListMap = new HashMap<String, Object>();
		
		partyManageListMap.put("userNo", userNo);
		partyManageListMap.put("startRnum", startRnum);
		partyManageListMap.put("endRnum", endRnum);
		partyManageListMap.put("partyJoinSelect", partyJoinSelect);
		
		
		return sqlSession.selectList("mypage.mypagePartyManage", partyManageListMap);
	}
	
	
	//21-10-11 by 대니
	//페이징 갯수와 페이징버튼을 위한 전체게시물갯수
	public int partyJoinTotalCount(int userNo, String partyJoinSelect) {
		
		Map<String, Object> totalCountMap = new HashMap<String, Object>();
		
		totalCountMap.put("userNo", userNo);
		totalCountMap.put("partyJoinSelect", partyJoinSelect);
		
		return sqlSession.selectOne("mypage.partyJoinTotalCount", totalCountMap);
	}
	
	
	
}
