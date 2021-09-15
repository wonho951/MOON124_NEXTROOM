<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/mypage.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/board_css/board.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/note.css" rel="stylesheet" type="text/css">

<script type="text/javascript"
	src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script> 
<title>보낸 쪽지함</title>
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
				   <h2>마이페이지</h2>
				</div>
				<div id="subheader-mintitle">마이페이지 > 보낸 쪽지함</div>
	
	
	
			 </div>

			

			 <div id="contentMain" class="clearfix">
                 <!-- aside -->
                <div id="aside">
                    <img id="aside_img" src="${pageContext.request.contextPath }/assets/image/asideImg.png" width="35px" height="35px">
                    
                    <div id="aside_cate">
                       <!-- <p>마이페이지</p> -->
                       <ul>
                          <li><a class="" href="${pageContext.request.contextPath }/information">개인정보 변경</a></li>
                          <li>결제내역</li>
                          <li>파티관리</li>
                          <li>나의 문의내역</li>
                          <li>관심 카페/테마</li>
                          <li>포인트 적립/사용내역</li>
                          <li>내가 쓴 글 보기
                             <ul>
                                <li>- 커뮤니티 글</li>
                                <li>- 커뮤니티 댓글</li>
                             </ul>
                          </li>
                          <li ><a class="active" href="">내 쪽지</a>
                             <ul>
                                <li><a class="" href="${pageContext.request.contextPath }/getNote">- 받은 쪽지함</a></li>
                                <li><a class="active" href="${pageContext.request.contextPath }/sendNote">- 보낸 쪽지함</a></li>
                                <li>- 쪽지 보내기</li>
                             </ul>
                          </li>
                          <li>회원 탈퇴</li>
                       </ul>
              
                    </div>
                 </div>
                 <!-- //aside -->
	
				<!-- main -->
				<div id="noteMain" class="clearfix">
				   
					<!-- 삭제버튼 -->
					<div id="all_select" class="clearfix">
						<form action="" method="get" class="form_area">
							
							<div class="post_delete">
								<button class="delete_button" type="submit">삭제</button>
							</div>
						</form>
					</div>
					<!-- //삭제 버튼 -->

					 <!-- 게시판리스트 -->
					 <div id="board_list">
						<table>
							<colgroup>
								<col style="width: 55px;">
								<col style="width: 120px;">
								<col style="width: 425px;">
								<col style="width: 150px;">
								<col style="width: 140px;">
								<col style="width: 140px;">
							</colgroup>
							<thead>
								<tr>
									<th><input type="checkbox" name=checkAll></th>
									<th>받는 사람</th>
									<th>쪽지 내용</th>
									<th>보낸 날짜</th>
									<th>수신 확인</th>
									<th>삭 제</th>
								</tr>
							</thead>

							<tbody>
								<tr>
									<td><input type="checkbox" name=checkOne></td>
									<td>최원호</td>
									<td>
										<span>보낸 쪽지함인디유</span>
									</td>
									<td>2021.09.15</td>
									<td>읽음</td>
									<td><img class="delete_icon" src="${pageContext.request.contextPath }/assets/image/board_image/delete.png"><a href=""></a></td>
								</tr>

								<tr>
									<td><input type="checkbox" name=checkOne></td>
									<td>최원호</td>
									<td>
										<span>보낸 쪽지함인디유</span>
									</td>
									<td>2021.09.15</td>
									<td>읽음</td>
									<td><img class="delete_icon" src="${pageContext.request.contextPath }/assets/image/board_image/delete.png"><a href=""></a></td>
								</tr>

								<tr>
									<td><input type="checkbox" name=checkOne></td>
									<td>최원호</td>
									<td>
										<span>보낸 쪽지함인디유</span>
									</td>
									<td>2021.09.15</td>
									<td>읽음</td>
									<td><img class="delete_icon" src="${pageContext.request.contextPath }/assets/image/board_image/delete.png"><a href=""></a></td>
								</tr>

								<tr>
									<td><input type="checkbox" name=checkOne></td>
									<td>최원호</td>
									<td>
										<span>보낸 쪽지함인디유</span>
									</td>
									<td>2021.09.15</td>
									<td>읽음</td>
									<td><img class="delete_icon" src="${pageContext.request.contextPath }/assets/image/board_image/delete.png"><a href=""></a></td>
								</tr>

								<tr>
									<td><input type="checkbox" name=checkOne></td>
									<td>최원호</td>
									<td>
										<span>보낸 쪽지함인디유</span>
									</td>
									<td>2021.09.15</td>
									<td>읽음</td>
									<td><img class="delete_icon" src="${pageContext.request.contextPath }/assets/image/board_image/delete.png"><a href=""></a></td>
								</tr>

								<tr>
									<td><input type="checkbox" name=checkOne></td>
									<td>최원호</td>
									<td>
										<span>보낸 쪽지함인디유</span>
									</td>
									<td>2021.09.15</td>
									<td>읽음</td>
									<td><img class="delete_icon" src="${pageContext.request.contextPath }/assets/image/board_image/delete.png"><a href=""></a></td>
								</tr>
								
								<tr>
									<td><input type="checkbox" name=checkOne></td>
									<td>최원호</td>
									<td>
										<span>보낸 쪽지함인디유</span>
									</td>
									<td>2021.09.15</td>
									<td>읽음</td>
									<td><img class="delete_icon" src="${pageContext.request.contextPath }/assets/image/board_image/delete.png"><a href=""></a></td>
								</tr>

								<tr>
									<td><input type="checkbox" name=checkOne></td>
									<td>최원호</td>
									<td>
										<span>보낸 쪽지함인디유</span>
									</td>
									<td>2021.09.15</td>
									<td>읽음</td>
									<td><img class="delete_icon" src="${pageContext.request.contextPath }/assets/image/board_image/delete.png"><a href=""></a></td>
								</tr>

								<tr>
									<td><input type="checkbox" name=checkOne></td>
									<td>최원호</td>
									<td>
										<span>보낸 쪽지함인디유</span>
									</td>
									<td>2021.09.15</td>
									<td>읽음</td>
									<td><img class="delete_icon" src="${pageContext.request.contextPath }/assets/image/board_image/delete.png"><a href=""></a></td>
								</tr>

								<tr>
									<td><input type="checkbox" name=checkOne></td>
									<td>최원호</td>
									<td>
										<span>보낸 쪽지함인디유</span>
									</td>
									<td>2021.09.15</td>
									<td>읽음</td>
									<td><img class="delete_icon" src="${pageContext.request.contextPath }/assets/image/board_image/delete.png"><a href=""></a></td>
								</tr>





							</tbody>
						</table>
					</div>
					<!-- //게시판 리스트 -->




				</div>
				<!-- //main -->

				

			 </div>

					<!-- 페이징 -->
					<div id="note_pager">
						<ol class="clearfix">
							<li><a href="">◀</a></li>
							<li><a class="active" href="">1</a></li>
							<li><a href="">2</a></li>
							<li><a href="">3</a></li>
							<li><a href="">4</a></li>
							<li><a href="">5</a></li>
							<li><a href="">6</a></li>
							<li><a href="">7</a></li>
							<li><a href="">8</a></li>
							<li><a href="">9</a></li>
							<li><a href="">10</a></li>
							<li><a href="">▶</a></li>
						</ol>					

					</div>                            
					<!-- //페이징 -->




		</div>
		<!-- //content -->


		<!-- footer -->

		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

		<!-- //footer -->


	</div>
</body>

<script type="text/javascript"> 

	function allCheckFunc( obj ) {
		$("[name=checkOne]").prop("checked", $(obj).prop("checked") );
	}

	/* 체크박스 체크시 전체선택 체크 여부 */
	function oneCheckFunc( obj ){
		var allObj = $("[name=checkAll]");
		var objName = $(obj).attr("name");
	
		if( $(obj).prop("checked") ){
			checkBoxLength = $("[name="+ objName +"]").length;
			checkedLength = $("[name="+ objName +"]:checked").length;
	
			if( checkBoxLength == checkedLength ) {
				allObj.prop("checked", true);
			} else {
				allObj.prop("checked", false);
			}
			
		}else{
			allObj.prop("checked", false);
		}
	}
	
	
	$(function(){
		$("[name=checkAll]").click(function(){
			allCheckFunc( this );
		});
		$("[name=checkOne]").each(function(){
			$(this).click(function(){
				oneCheckFunc( $(this) );
			});
		});
	});
</script>
</html>