<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/aside.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/rankUser.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>



<title>랭킹-유저</title>
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
               <h2><a href="${pageContext.request.contextPath}/rank/user">유저랭킹</a></h2>
            </div>
            <div id="subheader-mintitle"><a href="${pageContext.request.contextPath }/rank/user">랭킹</a> > <a href="${pageContext.request.contextPath }/rank/user">유저랭킹</a></div>



         </div>



         <div id="" class="clearfix">
            <!-- aside -->
           <div id="aside">
	
				<img id="aside_img" src="${pageContext.request.contextPath }/assets/image/asideImg.png">
			
				<div id="aside_cate">
				
					<ul>
					    <li class="selected"><a href="${pageContext.request.contextPath}/rank/user">유저 랭킹</a></li>
					    <li><a href="${pageContext.request.contextPath}/rank/theme">테마 랭킹</a></li>
					</ul>
				
				</div>
				
			</div>
            <!-- //aside -->

            <!-- main -->
            <div id="rankMain" class="clearfix">
               

               <!--검색-->
               <div class="clearfix">
               	
               		<form id="searchbar" class="" action="${pageContext.request.contextPath}/rank/detail/" method="get">
						<div class="form-group text-right">
							<span>검색 :&nbsp;</span>
							<input id="searchBox" placeholder="닉네임을 입력하세요." type="text" name="nickName">
							<button type="submit" id=btn_search class="search_button">검색</button>
						</div>
					</form>

                  

               </div>
               <!--//검색-->


              <div id="rank1">
                  
                     <div class="rank1_area clearfix">
                        	
                           	
                           	<span><img class="f-left" src="${pageContext.request.contextPath }/assets/image/party/crown222.png"><p>&nbsp;</p><img class="f-left rank_profile img-circle" src="${pageContext.request.contextPath }/assets/image/profile/${rankList[0].profile}"></span>
                        
                        
                           	<p class="first_font m-left f-left"><a href="${pageContext.request.contextPath }/rank/detail?nickName=${rankList[0].nickName}">${rankList[0].nickName}</a></p>
                        
                        
                            <ul class="rank_detail">
                              <li>성공률 : ${rankList[0].winRate}%</li>
                              <li>노힌트 성공률 : ${rankList[0].noHintWinRate}%</li>
                              <li>평균 기록 : ${rankList[0].showAvgClearTime}</li>
                              <li>전적 : ${rankList[0].gameHistory}</li>
                            </ul>
                        
                        
                     </div>
                  
            
               </div>

               <div id="rank2-5" class="clearfix">
                  <div id="sec_pool">
                     <ul>
                        <li>
                           <div>
                        
                              <span><img class="rank_profile" src="${pageContext.request.contextPath }/assets/image/profile/${rankList[1].profile}"></span>
                           
                           
                              <p class="sec_font"><a href="${pageContext.request.contextPath }/rank/detail?nickName=${rankList[1].nickName}">${rankList[1].nickName}</a></p>
                           
                           
                              <ul class="rank_detail">
                                 <li>성공률 : ${rankList[1].winRate}%</li>
	                             <li>노힌트 성공률 : ${rankList[1].noHintWinRate}%</li>
	                             <li>평균 기록 : ${rankList[1].showAvgClearTime}</li>
	                             <li>전적 : ${rankList[1].gameHistory}</li>
                              </ul>
                           
                        
                           </div>
                        </li>
                        <li>
                           <div class="">
                        
                              <span><img class="rank_profile" src="${pageContext.request.contextPath }/assets/image/profile/${rankList[2].profile}"></span>
                           
                           
                              <p class="sec_font"><a href="${pageContext.request.contextPath }/rank/detail?nickName=${rankList[2].nickName}">${rankList[2].nickName}</a></p>
                           
                           
                              <ul class="rank_detail">
                                 <li>성공률 : ${rankList[2].winRate}%</li>
	                             <li>노힌트 성공률 : ${rankList[2].noHintWinRate}%</li>
	                             <li>평균 기록 : ${rankList[2].showAvgClearTime}</li>
	                             <li>전적 : ${rankList[2].gameHistory}</li>
                              </ul>
                           
                        
                           </div>
                        </li>
                        <li>
                           <div class="">
                        
                              <span><img class="rank_profile" src="${pageContext.request.contextPath }/assets/image/profile/${rankList[3].profile}"></span>
                           
                           
                              <p class="sec_font"><a href="${pageContext.request.contextPath }/rank/detail?nickName=${rankList[3].nickName}">${rankList[3].nickName}</a></p>
                           
                           
                              <ul class="rank_detail">
                                 <li>성공률 : ${rankList[3].winRate}%</li>
	                             <li>노힌트 성공률 : ${rankList[3].noHintWinRate}%</li>
	                             <li>평균 기록 : ${rankList[3].showAvgClearTime}</li>
	                             <li>전적 : ${rankList[3].gameHistory}</li>
                              </ul>
                           
                        
                           </div>
                        </li>
                        <li>
                           <div class="">
                        
                              <span><img class="rank_profile" src="${pageContext.request.contextPath }/assets/image/profile/${rankList[4].profile}"></span>
                           
                           
                              <p class="sec_font"><a href="${pageContext.request.contextPath }/rank/detail?nickName=${rankList[4].nickName}">${rankList[4].nickName}</a></p>
                           
                           
                              <ul class="rank_detail">
                                 <li>성공률 : ${rankList[4].winRate}%</li>
	                             <li>노힌트 성공률 : ${rankList[4].noHintWinRate}%</li>
	                             <li>평균 기록 : ${rankList[4].showAvgClearTime}</li>
	                             <li>전적 : ${rankList[4].gameHistory}</li>
                              </ul>
                           
                        
                           </div>
                        </li>
                     </ul>
                  </div>


               </div>

              
               <div id="rank6-">
                  <ul id="third_pool">
                  	
                  	 <c:forEach var="ratingVo" items="${rankList}" begin="5">
	                     <li>
	                        <div class="rank_list">
	                        
	                           <span><img class="f-left ranklist_profile m-right" src="${pageContext.request.contextPath }/assets/image/profile/${ratingVo.profile}"></span>
	                        
	                        
	                           <p class="f-left"><a href="${pageContext.request.contextPath }/rank/detail?nickName=${ratingVo.nickName}">${ratingVo.nickName}</a></p>
	                        
	                        
	                           <ul class="ranklist_detail f-right">
	                              <li>성공률 : ${ratingVo.winRate}%</li>
	                              <li>노힌트 성공률 : ${ratingVo.noHintWinRate}%</li>
	                              <li>전적 : ${ratingVo.gameHistory}</li>
	                           </ul>
	                        
	                     
	                        </div>
	                     </li>
                     </c:forEach>

                   </ul>
               </div>

               <!--랭킹-->
               

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




/* $.ajax({
    type : '',
    url: '${pageContext.request.contextPath }/rank/getNicknameList',
    dataType : 'json',
    success : function(data) {
        // 서버에서 json 데이터 response 후 목록 추가
        	console.log(data);
            nameList = data;
            console.log("들어간"+nameList);
            return nameList;
    }
}); */

//console.log("다음 "+nameList)

$(function() {
    
    
    $("#searchBox").autocomplete({

        source: getNameList(),
        select: function(event, ui) {
            console.log(ui.item);
        },
        focus: function(event, ui) {
            return false;
            //event.preventDefault();
        }

    }).autocomplete( "instance" )._renderItem = function( ul, item ) {    //요 부분이 UI를 마음대로 변경하는 부분
        return $( "<li>" )    //기본 tag가 li로 되어 있음 
        .append( "<div class='searchNameList'>" + item.value+ "</div>" )    //여기에다가 원하는 모양의 HTML을 만들면 UI가 원하는 모양으로 변함.
        .appendTo( ul );
 	
    };

});







function getNameList(){
	
	var nameList;
	console.log("메소드 시작");
	$.ajax({
		
		//request
		url : "${pageContext.request.contextPath }/rank/getNicknameList",
		type : "post",
		//contentType : "application/json",
		
		//response
		async:false,
		dataType : "json",
		success : function(data) {
			console.log(data);
			nameList = data;
			
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
	
	return nameList;
}

</script>




</html>