<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/mypage.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/board.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/write.css" rel="stylesheet" type="text/css">

<title>자유게시판-글쓰기</title>
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
				<div id="subheader-mintitle">커뮤니티 > 자유게시판 > 글쓰기</div>
	
	
	
			 </div>

			

			 <div id="contentMain" class="clearfix">
				<!-- aside -->
				<div id="aside">
						<img id="aside_img" src="${pageContext.request.contextPath }/assets/image/asideImg.png" width="35px" height="35px">
						
						<div id="aside_cate_coummunity">
							<!-- <div id="aside_title"> -->
								<!-- <p>자유게시판</p> -->
							<!-- </div> -->
							<ul>
								<li><a class="active" href="${pageContext.request.contextPath }/community">자유게시판</a></li>
								<li><a class="" href="">후기게시판</a></li>
								<li><a class="" href="">양도/교환</a></li>
								<li><a class="" href="">공지사항</a></li>
								<li><a class="" href="">FAQ</a></li>		
							</ul>
						</div>
					</div>
				<!-- //aside -->
	
				<!-- main -->
				<div id="mypageMain" class="clearfix">
				   
					<!-- 버튼 -->
					<div id="list_button" >
						<ul>							
							<a href="${pageContext.request.contextPath }/community"><img src="${pageContext.request.contextPath }/assets/image/board_image/Board_all_icon.jpg" width="14px" height="14px" >전 체</a>
							<a href="${pageContext.request.contextPath }/community"><img src="${pageContext.request.contextPath }/assets/image/board_image/hot.png" width="14px" height="14px" >인 기</a>
							<a href="${pageContext.request.contextPath }/community"><img src="${pageContext.request.contextPath }/assets/image/board_image/hit.png" width="14px" height="14px" >조 회</a>

						</ul>
					</div>
					<!-- //버튼 -->

					<!-- 기간 선택 -->
					<div id="search_area" class="clearfix">
						<form action="" method="get" class="form_area">

                            <div id="category_title">
								<h3>글 쓰기</h3>
							</div>

							<div>
								<select class="board_select">
									<option>자유게시판</option>
									<option>후기게시판</option>
									<option>양도/교환</option>
								</select>
							</div>

						</form>
					</div>
					<!-- //기간 선택 -->

                    <!-- 글등록 공간 -->
                    <div id="writecontent_area">

						<form> 
							<div id="content_title">
								<input type="text" placeholder="제목을 입력해 주세요">
							</div>

							<div id="nick_date">
								<h6>작성자 : 호옹이</h6>
								<p>작성일 : 2021.09.10</p>
							</div>


							<div id="text_tool">
								<textarea id="txtContent" rows="50" cols="96" style="width: 1020px;"></textarea>
							</div>
						</form>







                    </div>
					<!-- //글등록 공간 -->

					<!-- 글등록 버튼 -->
					<a id="btn_save" href="">글등록</a>




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


</html>