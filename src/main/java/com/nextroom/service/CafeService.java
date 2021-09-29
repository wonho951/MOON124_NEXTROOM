package com.nextroom.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.nextroom.dao.CafeDao;
import com.nextroom.vo.CafeVo;

@Service
public class CafeService {

	@Autowired
	private CafeDao cafeDao;

	public int addCafe(CafeVo cafeVo, List<MultipartFile> inteList) {
		System.out.println("[CafeService.addCafe()]");
		
		int cafeNo = 0;

		// 카페메인이미지 파일처리
		MultipartFile file = cafeVo.getCafeImg();
		long fileSize = file.getSize();
		System.out.println("fileSize " + fileSize);

		// 카페이미지가 첨부되었을때
		if (fileSize > 0) {

			String saveDir = "C:\\javaStudy\\upload\\";

			System.out.println(file.getOriginalFilename());
			System.out.println(file.getSize());

			// 원파일이름
			String orgName = file.getOriginalFilename();
			System.out.println(orgName);

			// 확장자
			String exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
			System.out.println(exName);

			// 저장파일이름(관리때문에 겹치지 않는 새 이름 부여)
			String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;
			System.out.println(saveName);

			// 파일패스
			String filePath = saveDir + "\\" + saveName;
			System.out.println(filePath);

			// 파일 서버하드디스크에 저장
			try {
				byte[] fileData = file.getBytes();
				OutputStream out = new FileOutputStream(filePath);
				BufferedOutputStream bout = new BufferedOutputStream(out);

				bout.write(fileData);
				bout.close();

			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			cafeVo.setCafeImgPath(saveName);

			cafeDao.addCafekey(cafeVo);
			
			System.out.println("addCafekey 후 Vo : "+ cafeVo);
			
			cafeNo = cafeVo.getCafeNo();

		}else {
			cafeDao.updateCafe(cafeVo);
			
		}


		// 카페 내부이미지 처리  ------------------> 카페번호 가져와야됨 .. 씨발ㄹ..
		List<String> intePathList = new ArrayList<>();
		
		for (int i = 0; i < inteList.size(); i++) {

			long intefileSize = inteList.get(i).getSize();
			System.out.println("fileSize " + intefileSize);

			// 이미지가 첨부되었을때
			if (intefileSize > 0) {

				String inteSaveDir = "C:\\javaStudy\\upload\\";

				System.out.println(inteList.get(i).getOriginalFilename());
				System.out.println(inteList.get(i).getSize());

				// 원파일이름
				String inteOrgName = inteList.get(i).getOriginalFilename();
				System.out.println(inteOrgName);

				// 확장자
				String inteExName = inteList.get(i).getOriginalFilename()
						.substring(inteList.get(i).getOriginalFilename().lastIndexOf("."));
				System.out.println(inteExName);

				// 저장파일이름(관리때문에 겹치지 않는 새 이름 부여)
				String inteSaveName = System.currentTimeMillis() + UUID.randomUUID().toString() + inteExName;
				System.out.println(inteSaveName);

				// 파일패스
				String inteFilePath = inteSaveDir + "\\" + inteSaveName;
				System.out.println(inteFilePath);

				// 파일 서버하드디스크에 저장
				try {
					byte[] fileData = inteList.get(i).getBytes();
					OutputStream out = new FileOutputStream(inteFilePath);
					BufferedOutputStream bout = new BufferedOutputStream(out);

					bout.write(fileData);
					bout.close();

				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

				intePathList.add(inteSaveName);
			}

			cafeDao.addInteriorImg(cafeNo, intePathList);
		}

		return 0;
	}

}