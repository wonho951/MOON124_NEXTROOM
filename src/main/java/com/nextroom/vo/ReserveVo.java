package com.nextroom.vo;

public class ReserveVo {

	private int userNo;
	private int cafeNo;
	private int themeNo;
	private String themeName;
	private int themeTimeNo;
	private String themeTime;
	private int reserveDateNo;
	private String reserveDate;
	private int reserveTimeNo;
	private String reserveTime;
	private int reserveState;
	private int paymentState;
	private int reservePerson;
	private String reserveName;
	private int reserveNo;
	private String themeImg;
	private String cafeName;
	private String reserveHp;
	private String payment;
	private int totalPerson;
	private String regDate;
	private String gameState;
	private String sidoDetail;
	private String sido;
	
	public ReserveVo() {
		super();
	}



	public ReserveVo(int userNo, int cafeNo, int themeNo, String themeName, int themeTimeNo, String themeTime,
			int reserveDateNo, String reserveDate, int reserveTimeNo, String reserveTime, int reserveState,
			int paymentState, int reservePerson, String reserveName, int reserveNo, String themeImg, String cafeName,
			String reserveHp, String payment, int totalPerson, String regDate, String gameState, String sidoDetail, String sido) {
		super();
		this.userNo = userNo;
		this.cafeNo = cafeNo;
		this.themeNo = themeNo;
		this.themeName = themeName;
		this.themeTimeNo = themeTimeNo;
		this.themeTime = themeTime;
		this.reserveDateNo = reserveDateNo;
		this.reserveDate = reserveDate;
		this.reserveTimeNo = reserveTimeNo;
		this.reserveTime = reserveTime;
		this.reserveState = reserveState;
		this.paymentState = paymentState;
		this.reservePerson = reservePerson;
		this.reserveName = reserveName;
		this.reserveNo = reserveNo;
		this.themeImg = themeImg;
		this.cafeName = cafeName;
		this.reserveHp = reserveHp;
		this.payment = payment;
		this.totalPerson = totalPerson;
		this.regDate = regDate;
		this.gameState = gameState;
		this.sidoDetail = sidoDetail;
		this.sido = sido;
	}










	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getCafeNo() {
		return cafeNo;
	}

	public void setCafeNo(int cafeNo) {
		this.cafeNo = cafeNo;
	}

	public int getThemeNo() {
		return themeNo;
	}

	public void setThemeNo(int themeNo) {
		this.themeNo = themeNo;
	}

	public String getThemeName() {
		return themeName;
	}

	public void setThemeName(String themeName) {
		this.themeName = themeName;
	}

	public int getThemeTimeNo() {
		return themeTimeNo;
	}

	public void setThemeTimeNo(int themeTimeNo) {
		this.themeTimeNo = themeTimeNo;
	}

	public String getThemeTime() {
		return themeTime;
	}

	public void setThemeTime(String themeTime) {
		this.themeTime = themeTime;
	}

	public int getReserveDateNo() {
		return reserveDateNo;
	}

	public void setReserveDateNo(int reserveDateNo) {
		this.reserveDateNo = reserveDateNo;
	}

	public String getReserveDate() {
		return reserveDate;
	}

	public void setReserveDate(String reserveDate) {
		this.reserveDate = reserveDate;
	}

	public int getReserveTimeNo() {
		return reserveTimeNo;
	}

	public void setReserveTimeNo(int reserveTimeNo) {
		this.reserveTimeNo = reserveTimeNo;
	}

	public String getReserveTime() {
		return reserveTime;
	}

	public void setReserveTime(String reserveTime) {
		this.reserveTime = reserveTime;
	}

	public int getReserveState() {
		return reserveState;
	}

	public void setReserveState(int reserveState) {
		this.reserveState = reserveState;
	}
	
	public int getPaymentState() {
		return paymentState;
	}

	public void setPaymentState(int paymentState) {
		this.paymentState = paymentState;
	}

	public int getReservePerson() {
		return reservePerson;
	}

	public void setReservePerson(int reservePerson) {
		this.reservePerson = reservePerson;
	}

	public String getReserveName() {
		return reserveName;
	}

	public void setReserveName(String reserveName) {
		this.reserveName = reserveName;
	}

	public int getReserveNo() {
		return reserveNo;
	}

	public void setReserveNo(int reserveNo) {
		this.reserveNo = reserveNo;
	}
	
	public String getThemeImg() {
		return themeImg;
	}

	public void setThemeImg(String themeImg) {
		this.themeImg = themeImg;
	}
	
	

	public String getCafeName() {
		return cafeName;
	}


	public void setCafeName(String cafeName) {
		this.cafeName = cafeName;
	}


	public String getReserveHp() {
		return reserveHp;
	}


	public void setReserveHp(String reserveHp) {
		this.reserveHp = reserveHp;
	}


	public String getPayment() {
		return payment;
	}


	public void setPayment(String payment) {
		this.payment = payment;
	}
	
	public int getTotalPerson() {
		return totalPerson;
	}



	public void setTotalPerson(int totalPerson) {
		this.totalPerson = totalPerson;
	}



	public String getRegDate() {
		return regDate;
	}



	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}



	public String getGameState() {
		return gameState;
	}



	public void setGameState(String gameState) {
		this.gameState = gameState;
	}


	public String getSidoDetail() {
		return sidoDetail;
	}



	public void setSidoDetail(String sidoDetail) {
		this.sidoDetail = sidoDetail;
	}
	

	public String getSido() {
		return sido;
	}



	public void setSido(String sido) {
		this.sido = sido;
	}



	@Override
	public String toString() {
		return "ReserveVo [userNo=" + userNo + ", cafeNo=" + cafeNo + ", themeNo=" + themeNo + ", themeName="
				+ themeName + ", themeTimeNo=" + themeTimeNo + ", themeTime=" + themeTime + ", reserveDateNo="
				+ reserveDateNo + ", reserveDate=" + reserveDate + ", reserveTimeNo=" + reserveTimeNo + ", reserveTime="
				+ reserveTime + ", reserveState=" + reserveState + ", paymentState=" + paymentState + ", reservePerson="
				+ reservePerson + ", reserveName=" + reserveName + ", reserveNo=" + reserveNo + ", themeImg=" + themeImg
				+ ", cafeName=" + cafeName + ", reserveHp=" + reserveHp + ", payment=" + payment + ", totalPerson="
				+ totalPerson + ", regDate=" + regDate + ", gameState=" + gameState + ", sidoDetail=" + sidoDetail
				+ ", sido=" + sido + "]";
	}




	
	
	
	
	
}
