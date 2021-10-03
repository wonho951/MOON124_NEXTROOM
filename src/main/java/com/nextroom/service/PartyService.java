package com.nextroom.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nextroom.dao.PartyDao;
import com.nextroom.vo.PartyVo;

@Service
public class PartyService {

	@Autowired PartyDao partyDao;
	
	//21-09-26 by 대니
	//sido로 카페No, 카페이름가져오기
	public List<PartyVo> getCafeList(String sido) {
		System.out.println("서비스구간 시도: " + sido);
		
		List<PartyVo> cafeList = partyDao.getCafeList(sido);
		
		
		return cafeList;
	}
	
	
	//21-09-27 by 대니
	//cafeNo로 테마NO, 테마이름가져오기
	public List<PartyVo> getThemeList(int cafeNo) {
		System.out.println("서비스구간 카페: " + cafeNo);
		
		List<PartyVo> themeList = partyDao.getThemeList(cafeNo);
		
		
		return themeList;
	}
	
	
	//21-09-28 by 대니
	//themeNo로 시간표 가져오기
	public List<PartyVo> getThemeTimeList(int themeNo) {
		System.out.println("서비스구간 테마No: " + themeNo);
		
		List<PartyVo> themeTimeList = partyDao.getThemeTimeList(themeNo);
		
		
		return themeTimeList;
	}
	
	
	//21-09-29 by 대니
	//파티등록폼에서 넘어온 정보로 파티리스트 인서트!
	public int addPartyList(PartyVo partyVo) {
		System.out.println("PartyService.addPartyList()");
		System.out.println(partyVo);
		
		int count = partyDao.addPartyList(partyVo);
		System.out.println("인서트후: " + partyVo);
		
		//셀렉트키로 가져온 PARTYNO와 USERNO로 파티참여리스트 INSERT
		int userNo = partyVo.getUserNo();
		int partyNo = partyVo.getPartyNo();
		PartyVo partyDetailList = new PartyVo();
		partyDetailList.setUserNo(userNo);
		partyDetailList.setPartyNo(partyNo);
		
		partyDao.addPartyDetail(partyDetailList);
		
		
	
		return count;
	}
	
	
	//21-10-01~21-10-02 by 대니
	//파티등록 리스트 목록 출력하기
	public List<PartyVo> getPartyList() {
		
		//파티리스트 전체 출력
		List<PartyVo> partyList = partyDao.getPartyList();
		
		System.out.println("파티서비스-파티리스트: " + partyList);
		
		//cafeNo 뽑아서 필요한 정보가져오기
		for(int i=0; i<partyList.size(); i++) {
			int cafeNo = partyList.get(i).getCafeNo();
			
			PartyVo partyVo = new PartyVo();
			
			partyVo = (PartyVo) partyDao.getCafeNoList(cafeNo);
			
			String sidoDetail = partyVo.getSidoDetail();
			String cafeName = partyVo.getCafeName();
			
			partyList.get(i).setSidoDetail(sidoDetail);
			partyList.get(i).setCafeName(cafeName);
		
			
		//cafeNo와 themeNo 뽑아서 필요한 정보가져오기
			int themeNo = partyList.get(i).getThemeNo();
			
			PartyVo cafeThemeVo = new PartyVo(cafeNo, themeNo);
			
			partyVo = (PartyVo) partyDao.getCafeThemeNoList(cafeThemeVo);
			System.out.println("테마카페노로 가져온 정보들: " + partyVo);
			
			String themeName = partyVo.getThemeName();
			String themeImg = partyVo.getThemeImg();
			
			partyList.get(i).setThemeName(themeName);
			partyList.get(i).setThemeImg(themeImg);
			
		//partyNo로 유저카운트 가져오기
			int partyNo = partyList.get(i).getPartyNo();
			
			partyVo = (PartyVo) partyDao.getPartyNoList(partyNo);
			
			int userCount = partyVo.getUserCount();
			
			partyList.get(i).setUserCount(userCount);
			
		}
		
		System.out.println("서비스구간 파티총리스트: " + partyList);
		
		return partyList;
		
		
	}
	
	
	//21-10-03 by 대니
	//리스트에서 넘어온 파티No로 partyRead에 정보 뿌려주기
	public Map<String, Object> getPartyReadList(int partyNo) {
		System.out.println("파티서비스pNo: " + partyNo);
		
		//partyNo로 PATRYREAD 정보 가져오기
		PartyVo partyReadList = partyDao.getPartyReadList(partyNo);
		
		System.out.println("파티서비스리드리스트: " + partyReadList);
		
		int cafeNo = partyReadList.getCafeNo();
		System.out.println(cafeNo);
		
		//각종 No로 받아줄 생성자 새로 열기
		PartyVo getNoList = new PartyVo();
		
		//cafeNo로 정보가져와서 List에 추가
		getNoList = partyDao.getCafeNoList(cafeNo);
		
		partyReadList.setCafeName(getNoList.getCafeName());
		
		
		//cafeNo와 themeNo로 정보가져와서 List에 추가
		int themeNo = partyReadList.getThemeNo();
		PartyVo cafeThemeVo = new PartyVo(cafeNo, themeNo);
		
		cafeThemeVo = partyDao.getCafeThemeNoList(cafeThemeVo);
		
		partyReadList.setThemeName(cafeThemeVo.getThemeName());
		partyReadList.setThemeImg(cafeThemeVo.getThemeImg());
		partyReadList.setJenre(cafeThemeVo.getJenre());
		partyReadList.setLevels(cafeThemeVo.getLevels());
		partyReadList.setPlayTime(cafeThemeVo.getPlayTime());
		partyReadList.setThemeType(cafeThemeVo.getThemeType());
		
		System.out.println("카페노 테마노추가: " + partyReadList);
		
		//partyNo로 파티승인멤버 리스트 가져오기
		List<PartyVo> partyDetailList = partyDao.partyDetailList(partyNo); 
		
		//partyNo로 파티대기멤버 리스트 가져오기
		List<PartyVo> partyApplicantList = partyDao.partyApplicantList(partyNo);
		
		
		//Map 열어서 각종 Vo와 List 담아주기
		Map<String, Object> pReadMap = new HashMap<String, Object>();
		
		pReadMap.put("partyReadList", partyReadList);
		pReadMap.put("partyDetailList", partyDetailList);
		pReadMap.put("partyApplicantList", partyApplicantList);
		
		System.out.println("서비스구간 맵 다오너라 :" + pReadMap);
		
		return pReadMap;
	}
	
	
}
