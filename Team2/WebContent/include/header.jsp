<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/basic.css?ver=2" rel="stylesheet">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<script src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
</head>
<body>
<jsp:include page="/include/quick.jsp"/>

<div class="h-group" id="h-group">
<div class="header">
 <div class="rolling_top_menu">
      <div class="top_menu">
      <ul>
      <%
         request.setCharacterEncoding("UTF-8");
         
         //로그인 되었는지
         String id = (String) session.getAttribute("id");
         
         if(id == null){   
      %>
        <li> <a href="./MemberJoin.me">
    		  <i class='fas fa-user-edit'><span>회원가입 </span></i>    
         	 </a>
        </li>
        <li> <a href="./MemberLogin.me">
    		  <i class='fas fa-sign-in-alt'><span>로그인</span></i>    
          	 </a>
        </li>
      <% }else if(id.equals("admin")) { %>
        <li> <a href="./Main.ad">
    		  <i class='fas fa-users-cog'><span>관리자 페이지</span></i>    
         	 </a>
        </li>
        <li> <a href="./MemberLogout.me">
        	  <i class='fas fa-sign-out-alt'><span>로그아웃</span></i> 
         	 </a>
        </li>
      <% }else{ %>
        <li> <a href="./MemberPage.me">
        	  <i class='fas fa-user-cog'><span>마이 페이지</span></i>
        	 </a>
        </li>
        <li> <a href="./MemberLogout.me">
   			  <i class='fas fa-sign-out-alt'><span>로그아웃</span></i> 	    
         	 </a>
        </li>
      <% } %> 
   <li><a href="./BoardList.bo?category=0">
        <i class='far fa-bell'><span>공지사항</span></i>
       </a>
   </li>
   <li><a href="./BoardList.bo?category=1">
 		<i class='far fa-edit'><span>상품후기</span></i>  
   	   </a>
   </li>
   <li><a href="./BoardList.bo?category=2">
   		<i class='far fa-comments'><span>QnA</span></i>
   	   </a>
   </li>
   	  </ul>
    </div>
    
    <div class="notice">
     <ul class="rolling">
      <li><a href="#">공지사항 내용1</a></li>
      <li><a href="#">공지사항 내용2</a></li>
      <li><a href="#">공지사항 내용3</a></li>
      <li><a href="#">공지사항 내용4</a></li>
      <li><a href="#">공지사항 내용5</a></li>
      <li><a href="#">공지사항 내용6</a></li>
     </ul>
    </div>
 </div>
    <div id="logo">
      <a href="./Main.me" id="logo" class="title_logo">GALAPAGOS</a>
    </div>  
   <!-- 메인 메뉴 --> 
   <nav id="nav_menu" class="nav_menu"> 
      <ul class="sub_menu">
         <li class="dropdown"><a href="./AnimalList.an?category=파충류&sub_category=도마뱀" class="dropbtn"> 도마뱀 </a>
            <div class="dropdown-content">
               <a href="./AnimalList.an?category=파충류&sub_category=도마뱀&sub_category_index=리자드/모니터"> 리자드/모니터 </a>
               <a href="./AnimalList.an?category=파충류&sub_category=도마뱀&sub_category_index=레오파드 게코"> 레오파드 게코 </a> 
               <a href="./AnimalList.an?category=파충류&sub_category=도마뱀&sub_category_index=크레스티드 게코"> 크레스티드 게코 </a>
               <a href="./AnimalList.an?category=파충류&sub_category=도마뱀&sub_category_index=카멜레온"> 카멜레온 </a>
            </div>
          </li>
        
         <li class="dropdown"> <a href="./AnimalList.an?category=파충류&sub_category=뱀" class="dropbtn"> 뱀 </a> </li>
         
         <li class="dropdown"> <a href="./AnimalList.an?category=파충류&sub_category=거북" class="dropbtn"> 거북 </a> </li>
         
         
         <li class="dropdown"> <a href="./AnimalList.an?category=양서류" class="dropbtn"> 양서류 </a>
            <div class="dropdown-content">
                <a href="./AnimalList.an?category=양서류&sub_category=프로그"> 프로그 </a>
                <a href="./AnimalList.an?category=양서류&sub_category=살라맨더"> 살라맨더 </a>
                <a href="./AnimalList.an?category=양서류&sub_category=팩맨"> 팩맨 </a>
            </div>
         </li>
         
         <li class="dropdown"> <a href="./GoodsList.go?category=먹이" class="dropbtn"> 먹이 </a>
            <div class="dropdown-content">
               <a href="./GoodsList.go?category=먹이&sub_category=칼슘/약품"> 칼슘/약품 </a>
               <a href="./GoodsList.go?category=먹이&sub_category=생먹이"> 생먹이 </a>
               <a href="./GoodsList.go?category=먹이&sub_category=냉동먹이"> 냉동먹이 </a>
               <a href="./GoodsList.go?category=먹이&sub_category=인공사료"> 인공사료 </a>
            </div>
         </li>
         
         <li class="dropdown"> <a href="./GoodsList.go?category=사육용품" class="dropbtn"> 사육용품 </a>
            <div class="dropdown-content">
               <a href="./GoodsList.go?category=사육용품&sub_category=사육장"> 사육장 </a>
               <a href="./GoodsList.go?category=사육용품&sub_category=장식/그릇"> 장식/그릇 </a>
               <a href="./GoodsList.go?category=사육용품&sub_category=램프"> 램프 </a>
               <a href="./GoodsList.go?category=사육용품&sub_category=바닥재"> 바닥재 </a>
               <a href="./GoodsList.go?category=사육용품&sub_category=온/습도 관련"> 온/습도 관련 </a>
               <a href="./GoodsList.go?category=사육용품&sub_category=보조용품"> 보조용품 </a>
               <a href="./GoodsList.go?category=사육용품&sub_category=수족관"> 수족관 </a>
            </div>
         </li>
         <li class="dropdown"> <a href="./aHospital.bo" class="dropbtn"> 동물병원 정보</a> </li>
         <li class="dropdown"> <a href="./CouponList.co" class="dropbtn"> 이벤트 </a> </li>
      </ul>
   </nav>
   </div>
   </div>
<script>
$(document).ready(function(){
	var height =  $(".notice").height(); // 공지사항의 높이값을 구해주고
	var num = $(".rolling li").length; // length로 공지사항의 개수를 알아볼수있음 
	var max = height * num; 
	var move = 0; // 초기값 설정
	function noticeRolling(){ 
		move += height; // 여기에서 += 이라는것은 move = move + height
		$(".rolling").animate({"top":-move},800,function(){ // animate를 통해서
			//부드럽게 top값 올리기
			if( move >= max ){ // if문을 통해 최대값보다 top값을 많이 올렸다면 다시
				$(this).css("top",0); // 0으로 올려주고
				move = 0; // 초기값도 다시 0으로
			};
		});
	};
	// 자동롤링 답게 setInterval을 사용해서 1000 = 1초마다 함수 실행
	noticeRollingOff = setInterval(noticeRolling,2000);
	// 올리다 보면 마지막이 안보여서 clone을 통해 첫번째 li복사
	$(".rolling").append($(".rolling li").first().clone());
	
});		
</script>
</body>

</html>