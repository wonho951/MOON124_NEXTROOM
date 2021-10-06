<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/reservation.css" rel="stylesheet" type="text/css">

<script src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/js/jquery-ui-1.12.1.custom/jquery-ui.css">

<script>
	$(function() {
		
	
		$('#datepicker').datepicker( {
	
			minDate: 0,
			onSelect : function(dateText)
			{
				$('#datepicker2').datepicker("setDate", $(this).datepicker("getDate"));
				resetTime();
			}
		});
		
	
	});
	
	$(function() {

		$("#datepicker2").datepicker();
		$("#datepicker2").datepicker("option", "dateFormat", "yy-mm-dd");
		$('#datepicker2').datepicker('setDate', 'today');

	});
</script>

<title>방탈출 예약</title>
</head>
<body>
    <!-- 헤더영역 -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!-- //헤더영역 -->

     <div id="wrap">


		




		<!-- content -->
		<div id="content">


			<div id="subheader" class="clearfix">
				<div id="subheader-title">
					<h2>방탈출 예약</h2>
				</div>

			</div>

			<div id="contentMain" class="clearfix">
				
			    <!-- reservationBar -->
                <div id="reservation_bar" class="clearfix">
                    <div id="reservation_first" class="clearfix reservation_yellow"><div class="reservation_num">01</div><div class="reservation_txt">날짜/카페/테마 선택</div></div>
                    <div id="reservation_second" class="clearfix reservation_gray"><div class="reservation_num">02</div><div class="reservation_txt">예약정보 입력</div></div>
                    <div id="reservation_third" class="clearfix reservation_gray"><div class="reservation_num">03</div><div class="reservation_txt">결제하기</div></div>
                    <div id="reservation_fourth" class="clearfix reservation_gray"><div class="reservation_num">04</div><div class="reservation_txt">예약완료</div></div>
                </div>
                <!-- //reservationBar -->


                <!-- main -->
                <div id="reservation_main">
                	<form action="${pageContext.request.contextPath}/reserve/reserveInfoForm" method="">
	                    <div id="reservation_main_title" class="clearfix">
	                        <div id="reservation_main_title_date" class="clearfix"><div class="reservation_main_title">날짜</div></div>
	                        <div id="reservation_main_title_region" class="clearfix"><div class="reservation_main_title">지역</div></div>
	                        <div id="reservation_main_title_cafe" class="clearfix"><div class="reservation_main_title">카페</div></div>
	                        <div id="reservation_main_title_thema" class="clearfix"><div class="reservation_main_title">테마</div></div>
	                        <div id="reservation_main_title_time" class="clearfix"><div class="reservation_main_title">시간</div></div>
	                    </div>
	                    <div id="reservation_main_content" class="clearfix">
	                        <div id="reservation_main_content_calendar">
	                            <div id="datepicker"></div>
	                            <input type="text" id="datepicker2" name="reserveDate">
	                        </div>
	                        <div id="reservation_main_content_region">
	                            <p class="region" data-region-no=1>전국</p>
	                            <p class="region" data-region-no=2>서울</p>
	                            <p class="region" data-region-no=3>홍대&신촌</p>
	                            <p class="region" data-region-no=4>강남</p>
	                            <p class="region" data-region-no=5>건대</p>
	                            <p class="region" data-region-no=6>대학로</p>
	                            <p class="region" data-region-no=7>강북</p>
	                            <p class="region" data-region-no=8>신림</p>
	                            <p class="region" data-region-no=9>서울(기타)</p>
	                            <p class="region" data-region-no=10>부천</p>
	                            <p class="region" data-region-no=11>일산</p>
	                            <p class="region" data-region-no=12>수원</p>
	                            <p class="region" data-region-no=13>안양</p>
	                            <p class="region" data-region-no=14>경기(기타)</p>
	                            <p class="region" data-region-no=15>인천</p>
	                            <p class="region" data-region-no=16>강원</p>
	                            <p class="region" data-region-no=17>대전</p>
	                            <p class="region" data-region-no=18>천안</p>
	                            <p class="region" data-region-no=19>청주</p>
	                            <p class="region" data-region-no=20>충청(기타)</p>
	                            <p class="region" data-region-no=21>대구</p>
	                            <p class="region" data-region-no=22>부산</p>
	                            <p class="region" data-region-no=23>경상(기타)</p>
	                            <p class="region" data-region-no=24>전주</p>
	                            <p class="region" data-region-no=25>광주</p>
	                            <p class="region" data-region-no=26>전라(기타)</p>
	                            <p class="region" data-region-no=27>제주</p>
	                        </div>
	                        <div id="reservation_main_content_cafe">
	                        </div>
	                        <div id="reservation_main_content_thema">
	                        </div>
	                        <div id="reservation_main_content_time">
	                        </div>
	                    </div>
	
	                    <div id="reservation_button">
	                        <button type="submit" class="mbutton">예약하기</button>
	                    </div>
	                    
	                    <input type="text" name="regionNo" value=""> <!-- 처음 test는 type="text"로 하고 나중에 "hidden"으로 고치기 -->
	                    <input type="text" name="cafeNo" value="">
	                    <input type="text" name="themeNo" value="">
	                    <input type="text" name="timeNo" value="">
	                     
                    </form>
                    
                </div>
                <!-- //main -->

			</div>


		</div>

		<!-- //content -->


		<!-- footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		<!-- //footer -->
	</div>
</body>

<script>
	
	//지역 클릭
	$(".region").on("click", function() {
		$(".region").removeClass("reservation_yellow");
		$(this).addClass("reservation_yellow");
		
		var region = $(this).data("region-no");
		var sidoDetail = $(this).text();
		console.log(region);
		console.log(sidoDetail);
		
		$("#reservation_main_content_cafe").text("");
		$("#reservation_main_content_thema").text("");
		$("#reservation_main_content_time").text("");

		fetchList(sidoDetail);
		
		$("[name='regionNo']").val(region);
		
	});
	
	//리스트 가져오기
	function fetchList(sidoDetail) {
		console.log(sidoDetail);
		
		$.ajax({
			url: "${pageContext.request.contextPath}/reserve/getCafe",
			type: "post",
			data : { sidoDetail : sidoDetail },
			
			//dataType: "json",
			success : function(cafeList) {
				console.log(cafeList);
				
				//화면에 그리기
				for (var i = 0; i < cafeList.length; i++) {
					render(cafeList[i], "down");
				}
				
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	}
	
	//카페 한개씩 렌더링
	function render(ReserveVo, type) {

		var str = "";
		str += '<p class="cafe" data-cafeno="'+ReserveVo.cafeNo+'">' + ReserveVo.cafeName + '</p>';

		if (type === 'down') {
			$("#reservation_main_content_cafe").append(str);
		} else if (type === 'up') {
			$("#reservation_main_content_cafe").prepend(str);
		} else {
			console.log("방향을 지정해 주세요");
		}
		

	};
	
	
	
	
	
	//카페 클릭
	$("#reservation_main_content_cafe").on("click",".cafe", function() {
		console.log("카페 선택");
		$(".cafe").removeClass("reservation_yellow");
		
		$(this).addClass("reservation_yellow");
		var cafeNum = $(this).data("cafeno");
		console.log(cafeNum);
		
		$("#reservation_main_content_thema").text("");
		$("#reservation_main_content_time").text("");

		fetchThemeList(cafeNum);
		
		$("[name='cafeNo']").val(cafeNum);
	});
	
	//리스트 가져오기
	function fetchThemeList(cafeNum) {
		console.log(cafeNum);
		
		$.ajax({
			url: "${pageContext.request.contextPath}/reserve/getTheme",
			type: "post",
			data : { cafeNum : cafeNum },
			
			//dataType: "json",
			success : function(themeList) {
				console.log(themeList);
				
				//화면에 그리기
				for (var i = 0; i < themeList.length; i++) {
					renderTheme(themeList[i], "down");
				}
				
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	}
	
	//테마 한개씩 렌더링
	function renderTheme(ReserveVo, type) {

		var str = "";
		str += '<p class="theme" data-themeno="'+ReserveVo.themeNo+'">' + ReserveVo.themeName + '</p>';

		if (type === 'down') {
			$("#reservation_main_content_thema").append(str);
		} else if (type === 'up') {
			$("#reservation_main_content_thema").prepend(str);
		} else {
			console.log("방향을 지정해 주세요");
		}
		

	};
	
	
	
	
	function resetTime() {
		console.log("아자아자");
		var themeNo = $("[name='themeNo']").val();
		console.log(themeNo);
		
		$("#reservation_main_content_time").text("");

		fetchTimeList(themeNo);
		
		$("[name='themeNo']").val(themeNo);
	}
		
	
	
	
	//테마 클릭
	$("#reservation_main_content_thema").on("click",".theme", function() {
		console.log("테마 선택");
		$(".theme").removeClass("reservation_yellow");
		
		$(this).addClass("reservation_yellow");
		var themeNo = $(this).data("themeno");
		console.log(themeNo);
		
		$("#reservation_main_content_time").text("");

		fetchTimeList(themeNo);
		
		$("[name='themeNo']").val(themeNo);
	});
	
	//리스트 가져오기
	function fetchTimeList(themeNo) {
		console.log(themeNo);
		
		$.ajax({
			url: "${pageContext.request.contextPath}/reserve/getTime",
			type: "post",
			data : {themeNo : themeNo,
					reserveDate : $("[name='reserveDate']").val()},
			
			//dataType: "json",
			success : function(timeList) {
				console.log(timeList);
				
				//화면에 그리기
				for (var i = 0; i < timeList.length; i++) {
					renderTime(timeList[i], "down");
				}
				
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	}
	
	//테마 한개씩 렌더링
	function renderTime(ReserveVo, type) {

		var str = "";
		if(ReserveVo.reserveState === 1) {
			str += '<p class="time reservePos" data-time="'+ReserveVo.timeNo+'">' + ReserveVo.themeTime + '</p>';
		} else if(ReserveVo.reserveState === 2) {
			str += '<p class="time reserveImpos" data-time="'+ReserveVo.timeNo+'">' + ReserveVo.themeTime + '</p>';
		} else if(ReserveVo.reserveState === 3) {
			str += '<p class="time reserveImpos" data-time="'+ReserveVo.timeNo+'">' + ReserveVo.themeTime + '</p>';	
		}

		if (type === 'down') {
			$("#reservation_main_content_time").append(str);
		} else if (type === 'up') {
			$("#reservation_main_content_time").prepend(str);
		} else {
			console.log("방향을 지정해 주세요");
		}

	};
	
	
	
</script>


</html>










