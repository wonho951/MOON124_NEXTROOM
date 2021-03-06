<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet"
	type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/cafe.css" rel="stylesheet"
	type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/modal.css" rel="stylesheet"
	type="text/css">
<%-- <link href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"> --%>

<title>카페 상세</title>
</head>


<script type="text/javascript"
	src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>


<body>

	<!-- 헤더영역 -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!-- //헤더영역 -->

	<div id="wrap">

		<!-- content -->
		<div id="content">

			<!-- main -->

			<div id="cafe_detail_back" class="clearfix">
				<div id="cafe_detail_wrap">
					<img id="cafe_detail_mainImg"
						src="${pageContext.request.contextPath }/upload/${detailMap.cafeVo.cafeImg }">
					<div id="cafe_detail_text">
						<div id="cafe_detail_title">
							<p id="cafe_detail_name">${detailMap.cafeVo.cafeName }</p>
							<p id="cafe_detail_content">${detailMap.cafeVo.cafeIntro }</p>
						</div>

						<div id="cafe_detail_contact" class="cafe_contact">

							<div>
								<img src="${pageContext.request.contextPath }/assets/image/cafe/tel.png">&nbsp;${detailMap.cafeVo.cafeHp }
							</div>

							<div>
								<img src="${pageContext.request.contextPath }/assets/image/cafe/loc.png">&nbsp;${detailMap.cafeVo.printAddress }
								<button href="" id="cafe_btn_viewmap">지도보기</button>
								<input id="latitude" type="hidden" value="${detailMap.cafeVo.latitude }"> <input
									id="longitude" type="hidden" value="${detailMap.cafeVo.longitude }"> <input
									id="cafeName" type="hidden" value="${detailMap.cafeVo.cafeName }">
							</div>

							<div>
								<img src="${pageContext.request.contextPath }/assets/image/cafe/time.png">&nbsp;매일
								${detailMap.cafeVo.openTime } ~ ${detailMap.cafeVo.closeTime }
							</div>
						</div>

						<div id="cafe_detail_btn">
							<button onclick="location.href = '${pageContext.request.contextPath }/reserve/reserveBaseForm?sidoDetail=${detailMap.cafeVo.sidoDetail}&cafeNo=${detailMap.cafeVo.cafeNo }&cafeName=${detailMap.cafeVo.cafeName }&rKey=cafeReserve'" class="cbutton" id="cafe_reserv">예약하기</button>
							<button onclick="window.open('${detailMap.cafeVo.url}')" class="cbutton" id="cafe_site">공식사이트</button>
						</div>
					</div>

				</div>
			</div>

			<div id="cafe_interior" class="scroll clearfix">
				<!-- 이미지 반복영역 -->
				<div class="scroll-image">

					<c:if test="${not empty detailMap.inteList}">
						<c:forEach items="${detailMap.inteList}" var="inteList" varStatus="status">
							<img alt="" src="${pageContext.request.contextPath }/upload/${inteList.img}" />
						</c:forEach>
					</c:if>
					<c:if test="${empty detailMap.inteList}">
						<img alt="" src="${pageContext.request.contextPath }/assets/image/cafe/noImg1.png" />
						<img alt="" src="${pageContext.request.contextPath }/assets/image/cafe/noImg1.png" />
						<img alt="" src="${pageContext.request.contextPath }/assets/image/cafe/noImg1.png" />
						<img alt="" src="${pageContext.request.contextPath }/assets/image/cafe/noImg1.png" />
					</c:if>
				</div>
				<!-- //이미지 반복영역 -->

			</div>



			<!-- 			<div id="cafe_detail_price"> -->

			<!-- 				<p>| 가격</p> -->
			<%-- 				<c:if test="${not empty detailMap.themeList}"> --%>





			<!-- 					<table id="cafe_priceTable" style="display: table; table-layout: fixed"> -->


			<!-- 						<thead> -->
			<!-- 							<th style="display: table-cell;">인원수</th> -->

			<%-- 							<c:forEach items="${detailMap.themeList}" var="themeList" varStatus="status"> --%>

			<%-- 								<th style="display: table-cell;">${themeList.themeName }(${themeList.playTime }분)</th> --%>

			<%-- 							</c:forEach> --%>
			<!-- 						</thead> -->

			<!-- 						<tbody style="display: table-cell;"> -->
			<%-- 							<c:forEach items="${detailMap.headCountList}" var="headCountList" varStatus="status"> --%>
			<!-- 								<tr> -->
			<%-- 									<td style="display: table-cell; width: 100%;">${headCountList.headCount}인</td> --%>
			<!-- 								</tr> -->
			<%-- 							</c:forEach> --%>
			<!-- 						</tbody> -->


			<%-- 						<c:forEach items="${detailMap.allPriceList}" var="allPriceList" varStatus="status"> --%>

			<!-- 							<tbody style="display: table-cell; width: 100%;"> -->
			<%-- 								<c:forEach items="${allPriceList}" var="priceList" varStatus="status"> --%>

			<!-- 									<tr> -->
			<%-- 										<c:choose> --%>
			<%-- 											<c:when test="${priceList.price == 0}"> --%>
			<!-- 												<td style="display: table-cell; width: 100%;">-</td> -->
			<%-- 											</c:when> --%>
			<%-- 											<c:otherwise> --%>
			<%-- 												<td style="display: table-cell; width: 100%;">${priceList.price}원</td> --%>
			<%-- 											</c:otherwise> --%>
			<%-- 										</c:choose> --%>
			<!-- 									</tr> -->
			<%-- 								</c:forEach> --%>
			<!-- 							</tbody> -->

			<%-- 						</c:forEach> --%>




			<!-- 					</table> -->
			<%-- 				</c:if> --%>
			<%-- 				<c:if test="${empty detailMap.themeList}"> --%>
			<!-- 					<p>등록된 테마가 없습니다.</p> -->
			<%-- 				</c:if> --%>


			<!-- 			</div> -->


			<div id="cafe_detail_theme">

				<p>| 테마</p>

				<c:if test="${empty detailMap.themeList}">
					<p>등록된 테마가 없습니다.</p>
				</c:if>

				<c:if test="${not empty detailMap.themeList}">
					<div id="cafe_theme_list" class="clearfix">

						<!-- 테마 반복영역 -->
						<c:forEach items="${detailMap.themeList}" var="themeList" varStatus="status">
							<div class="cafe_theme">
								<a href="${pageContext.request.contextPath}/cafe/theme/${themeList.themeNo}"> <img
									src="${pageContext.request.contextPath }/upload/${themeList.themeImg}" alt="">
								</a>

								<div class="cafe_theme_info">
									<p>${themeList.cafeName}</p>

									<a href="${pageContext.request.contextPath}/cafe/theme/${themeList.themeNo}">
										<p class="cafe_theme_info_title">${themeList.themeName}</p>
									</a> <span>장르 : </span><span>${themeList.jenre}</span> | <span>추천인원 : </span><span>${themeList.pRecommendMin}~${themeList.pRecommendMax}인</span><br>
									<span>난이도 : </span> <span> <c:if test="${themeList.levels == 5 }">
									★★★★★
								</c:if> <c:if test="${themeList.levels == 4}">
									★★★★
								</c:if> <c:if test="${themeList.levels == 3}">
									★★★
								</c:if> <c:if test="${themeList.levels == 2}">
									★★
								</c:if> <c:if test="${themeList.levels == 1}">
									★
								</c:if>


									</span> | <span>플레이타임 : </span><span>${themeList.playTime}분</span><br> <span>체감난이도 :
									</span> <span> <c:if test="${themeList.aFeelLevel >= 4.5 }">
									★★★★★
								</c:if> <c:if test="${themeList.aFeelLevel >= 3.5 && themeList.aFeelLevel < 4.5}">
									★★★★
								</c:if> <c:if test="${themeList.aFeelLevel >= 2.5 && themeList.aFeelLevel < 3.5}">
									★★★
								</c:if> <c:if test="${themeList.aFeelLevel >= 1.5 && themeList.aFeelLevel < 2.5}">
									★★
								</c:if> <c:if test="${themeList.aFeelLevel >= 0.5 && themeList.aFeelLevel < 1.5}">
									★
								</c:if> <c:if test="${themeList.aFeelLevel == 0}">
									-
								</c:if> (${themeList.aFeelLevel})
									</span> | <span>평점 : </span> <span> <c:if test="${themeList.aRating >= 4.5 }">
									★★★★★
								</c:if> <c:if test="${themeList.aRating >= 3.5 && themeList.aRating < 4.5}">
									★★★★
								</c:if> <c:if test="${themeList.aRating >= 2.5 && themeList.aRating < 3.5}">
									★★★
								</c:if> <c:if test="${themeList.aRating >= 1.5 && themeList.aRating < 2.5}">
									★★
								</c:if> <c:if test="${themeList.aRating >= 0.5 && themeList.aRating < 1.5}">
									★
								</c:if> <c:if test="${themeList.aRating == 0}">
									-
								</c:if> (${themeList.aRating})
									</span><br> <span>유형 : </span><span>${themeList.themeType}</span> | <span>활동성 : </span><span>${themeList.activity}</span>

								</div>
							</div>
						</c:forEach>



						<!-- //테마 반복영역 -->

					</div>
				</c:if>


			</div>

		</div>

		<!-- //content -->


		<!-- footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		<!-- //footer -->
	</div>



	<!-- 지도보기 모달 -->
	<div id="cafe_detail_modal">

		<div class="cafe_detail_modal_content">

			<div id="cafe_map" style="width: 500px; height: 400px;"></div>


			<button type="button" id="modal_close_btn" class="mbutton">닫기</button>

		</div>

		<div class="cafe_detail_modal_layer"></div>
	</div>


	<!-- 자바스크립트 사용
    <script>
        document.getElementById("cafe_btn_viewmap").onclick = function() {
            document.getElementById("cafe_detail_modal").style.display="block";
        }
       
        document.getElementById("modal_close_btn").onclick = function() {
            document.getElementById("cafe_detail_modal").style.display="none";
        }   
    </script> -->


	<!-- 제이쿼리 사용-->
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8f0f56038184ef1eac6b631a3dfc277d"></script>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8f0f56038184ef1eac6b631a3dfc277d&libraries=services,clusterer,drawing"></script>

	<script>
		var latitude = $("#latitude").val();
		var longitude = $("#longitude").val();

		console.log(latitude);
		console.log(longitude);

		$("#cafe_btn_viewmap")
				.on(
						"click",
						function() {
							$("#cafe_detail_modal").attr("style",
									"display:block");
							/* $('body').css("overflow", "hidden"); */
							document.body.classList.add("stop-scroll");

							var container = document.getElementById('cafe_map'), options = {
								center : new kakao.maps.LatLng(longitude,
										latitude),
								level : 3
							};
							var map = new kakao.maps.Map(container, options);

							container.style.width = '500px';
							container.style.height = '400px';

							map.relayout();

							// 마커가 표시될 위치입니다 
							var markerPosition = new kakao.maps.LatLng(
									longitude, latitude);

							// 마커를 생성합니다
							var marker = new kakao.maps.Marker({
								position : markerPosition
							});

							// 마커가 지도 위에 표시되도록 설정합니다
							marker.setMap(map);

							var cafeName = $("#cafeName").val();

							var iwContent = '<div style="padding:10px 10px; font-size:12px; text-align:center;">'
									+ cafeName + '</div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
							iwPosition = new kakao.maps.LatLng(33.450701,
									126.570667); //인포윈도우 표시 위치입니다

							// 인포윈도우를 생성합니다
							var infowindow = new kakao.maps.InfoWindow({
								position : iwPosition,
								content : iwContent
							});

							// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
							infowindow.open(map, marker);

						});

		$("#modal_close_btn").on("click", function() {
			$("#cafe_detail_modal").attr("style", "display:none");
			/* $('body').css("overflow", "scroll"); */
			document.body.classList.remove("stop-scroll");
		});
	</script>


	<!-- 부트스트랩 사용(못하겠음)
    
    <script type="text/javascript">
    
    $("
							#cafe_btn_viewmap").on("click", function() {
		
		//모달창보이기
		$("#cafe_detail_modal").modal();

	}); -->


	</script>







	<!-- //지도보기 모달 -->
</body>

</html>