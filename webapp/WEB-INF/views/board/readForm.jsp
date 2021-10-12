<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/mypage.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/board_css/board.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/board_css/read.css" rel="stylesheet" type="text/css">

<script type="text/javascript"
src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
<title></title>
</head>
<body>

		<!-- 헤더영역 -->
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
		<!-- //헤더영역 -->
	<div id="wrap">


		<!-- content -->
		<div id="content" >
			
			<div id="subheader" class="clearfix">
				<div id="subheader-title">
				   <h2>커뮤니티</h2>
				</div>
				<div id="subheader-mintitle">커뮤니티 > 후기게시판</div>
	
	
	
			 </div>

			

			 <div id="contentMain" class="clearfix">
				<!-- aside -->
				<div id="aside">
						<img id="aside_img" src="${pageContext.request.contextPath }/assets/image/asideImg.png" width="35px" height="35px">
						
						<div id="aside_cate">
							<ul>
								<li><a class="" href="${pageContext.request.contextPath }/board/freeCommunity">자유게시판</a></li>
								<li><a class="active" href="${pageContext.request.contextPath }/board/reviewBoard">후기게시판</a></li>
								<li>양도/교환</li>
								<li>공지사항</li>
							</ul>
						</div>
					</div>
				<!-- //aside -->
	
				<!-- main -->
				<div id="mypageMain" class="clearfix">
				   
					<!-- 버튼 -->
					<div id="list_button" >
						<ul>							
							<a href="${pageContext.request.contextPath }/board/reviewBoard"><img src="${pageContext.request.contextPath }/assets/image/board_image/Board_all_icon.jpg" width="14px" height="14px" >전 체</a>
							<a href="${pageContext.request.contextPath }/board/reviewBoard"><img src="${pageContext.request.contextPath }/assets/image/board_image/hot.png" width="14px" height="14px" >인 기</a>
							<a href="${pageContext.request.contextPath }/board/reviewBoard"><img src="${pageContext.request.contextPath }/assets/image/board_image/hit.png" width="14px" height="14px" >조 회</a>

						</ul>
					</div>
					<!-- //버튼 -->

					<!-- 수정/ 삭제/ 목록 버튼 -->
					<div>
						<div id="update_button" class="clearfix" >
							<ul>							
								<a href="${pageContext.request.contextPath }/board/reviewBoard" class="submit_button">목 록</a>	
								
								<c:if test="${authUser.userNo ==  reviewBoardVo.userNo}">
									<a id="delete_button" class="submit_button" data-reviewno="${reviewBoardVo.reviewNo}">삭 제</a>	<!-- 글 삭제(작성자만 보임) -->
									<a href="${pageContext.request.contextPath }/board/reviewModify?reviewNo=${reviewBoardVo.reviewNo}" class="submit_button">수 정</a>
								</c:if>
								
							</ul>
						</div>
					</div>
					<!-- //수정/ 삭제/ 목록 버튼 -->

					<!-- 글 읽기폼 -->
					<div id="read_area" class="clearfix">
						

							<div>
								<h3>${reviewBoardVo.reviewTitle}</h3>
							</div>

							<div class="user_information">
								<span>작성자 : ${reviewBoardVo.nickname}</span>								
								<span>조회 : ${reviewBoardVo.reviewHit}</span>
								<span>작성일 : ${reviewBoardVo.reviewRegDate}</span>
							</div>

							<!-- 후기 정보 -->
							<div class="user_information">
								<span>테마 : ${reviewBoardVo.themeName }</span>
								
								<c:if test="${reviewBoardVo.rating == 5 }">
									<span >체감 난이도 : <span id="star">★★★★★ </span> </span>
								</c:if>
								
								<c:if test="${reviewBoardVo.rating == 4 }">
									<span>체감 난이도 : ★★★★</span>
								</c:if>

								<c:if test="${reviewBoardVo.rating == 3 }">
									<span>체감 난이도 : ★★★</span>
								</c:if>

								<c:if test="${reviewBoardVo.rating == 2 }">
									<span>체감 난이도 : ★★</span>
								</c:if>
								
								<c:if test="${reviewBoardVo.rating == 1 }">
									<span>체감 난이도 : ★</span>
								</c:if>
								
																																
								<span>성공 여부 : ${reviewBoardVo.reviewClear }</span>
								<span>힌트 사용갯수 : ${reviewBoardVo.reviewHints }</span>
								<span>인원수 : ${reviewBoardVo.memberNum }</span>
								<span>소요 시간 : <fmt:formatNumber value="${reviewBoardVo.recTime/60 } " maxFractionDigits="0" ></fmt:formatNumber> 분 ${reviewBoardVo.recTime%60 }초</span>
							</div>
							<!-- //후기 정보 -->
							
							
							<!-- 콘텐츠 -->
							<div id="board">								
								<!-- 콘텐츠 메인정보 -->
								<div id=main_informa>
									<div id="img_area" class="board_content">
									
										<!-- 이미지가 있을 경우 -->
										<c:if test="${reviewBoardVo.reviewImg != null}">
											<img src="${pageContext.request.contextPath }/upload/${reviewBoardVo.reviewImg}">	<!-- 이미지 넣을때마다 반복 어케 하냐고 -->
											<div id="text_area">
												<span>${reviewBoardVo.reviewContent}</span>
											</div>
										</c:if>
										
										<!-- 이미지가 없을 경우 텍스트만 출력 -->
										<c:if test="${reviewBoardVo.reviewImg == null}">
											<div id="text_area" style="position:relative; margin-top:20px;">
												<span>${reviewBoardVo.reviewContent}</span>
											</div>
										</c:if>
										
										
										
										<div id="wrap_up_down">
											<a href="${pageContext.request.contextPath }/board/reviewBoard" class="back_button">목 록</a>
											
											<c:if test="${authUser != null }">
												<a id="like" type="button" id="up"  class="up_down" name="${reviewBoardVo.reviewLike }">추 천</a>
												<a id="hate" type="button" id="down" class="up_down" name="${reviewBoardVo.reviewLike}">반 대</a>
												<input id="reviewNoData" type="hidden" value="${reviewBoardVo.reviewNo}">
											</c:if>
										</div>

										<!-- 이전/다음 글 -->
										<div id="wrap_preview">
											<div class="prv">
											  <table width="100%">
												<tr>
													<td width="60" height="20" class="writing"><a href="">▲ 다음 글</a></td>
													<td width="360" class="next"><a href="">다음 글이 없습니다. </a></td>
												</tr>
												<tr>
													<td width="60" height="20" class="writing"><a href="">▼ 이전 글</a></td>
													<td width="360" class="next"><a href="">이전 글이 없습니다.</a></td>												
												</tr>
											  </table>
											</div>
										</div>
										<!-- //이전/다음 글 -->

									<form action="" method="get" class="form_area">
										<!-- 댓글쓰기 -->
										<div id="comment">
											<strong>댓글 쓰기</strong>
											<div>
												<input type="text" placeholder="로그인 후 이용해 주세요" name="">
												<a id="commentAdd">등 록</a>
											</div>
										</div>
										<!-- //댓글쓰기 -->
									</form>
									
										<!-- 댓글 리스트 -->
										<div id="comment_box">
											<ul id="comment_list">
												<li id="">
													<div id="nick_box">슬퍼하지마 노노노</div>
													<div id="comment_content">댓글 내용 후루룩짭짭 아이고 힘들다 죽겄다 에혀</div>
													<div id="write_date">2021.09.12</div>
													<div id="delete_comment"><a href=""><img src="${pageContext.request.contextPath }/assets/image/board_image/delete.png"></a></div>	<!-- ajax사용 해야하나 -->
												</li>																																																								
											</ul>
										</div>
										<!-- //댓글 리스트 -->

										<!-- 하단 여백 -->
										<div id="blank" class="clearfix"></div>
										<!-- //하단 여백 -->

									</div>

								</div>
								<!-- //콘텐츠 메인정보 -->


							</div>
							<!-- //콘텐츠-->
						
					</div>
					<!-- //글 읽기폼 -->



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


<script type="text/javascript">

document.title = '${reviewBoardVo.reviewTitle}';


/*게시글의 삭제버튼을 눌렀을때*/
$("#delete_button").on("click", function() {

	var reviewNo = $("#delete_button").data("reviewno");
	console.log(reviewNo);
	
	const result = confirm("게시물을 삭제하시겠습니까?");
	if(result) {
		
		//ajax서버에 요청
		$.ajax({
			
			url : "${pageContext.request.contextPath }/board/reviewDelete",		
			type : "post",
// 			contentType : "application/json",
			data : {reviewNo: reviewNo},

// 			dataType : "json",
			success : function(count){
				/*성공시 처리해야될 코드 작성*/
				console.log("삭제완료");
				
				if(count > 0) {
					window.location.assign('http://localhost:8088/nextroom/board/reviewBoard');
				}
				
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
			
		});
		
	}
		
		
});

//2021.10.12 by 원호
//게시글 추천
$("#like").on("click",function(){
	console.log("추천 클릭")
	
	var reviewNo = $("#reviewNoData").val();
	console.log(reviewNo);
	
	//ajax서버에 요청
	$.ajax({
		
		url : "${pageContext.request.contextPath }/board/ReviewLike",		
		type : "post",
//			contentType : "application/json",
		data : {reviewNo: reviewNo},

//			dataType : "json",
		success : function(count){
			/*성공시 처리해야될 코드 작성*/
			console.log("추천완료");
			
			
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
	
});

//2021.10.12 by 원호
//게시글 비추천
$("#hate").on("click",function(){
	console.log("비추천 클릭")
	
	var reviewNo = $("#reviewNoData").val();
	console.log(reviewNo);
	
	//ajax서버에 요청
	$.ajax({
		
		url : "${pageContext.request.contextPath }/board/ReviewHate",		
		type : "post",
//			contentType : "application/json",
		data : {reviewNo: reviewNo},

//			dataType : "json",
		success : function(count){
			/*성공시 처리해야될 코드 작성*/
			console.log("비추천완료");
			
			
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
	
});


//댓글 등록
$("#commentAdd").on("click", function(){
	console.log("댓글등록 클릭")
})



</script>


</html>