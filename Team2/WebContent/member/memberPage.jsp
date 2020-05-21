<%@page import="java.net.URLDecoder"%>
<%@page import="team2.member.db.MemberDAO"%>
<%@page import="team2.member.db.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link href="${pageContext.request.contextPath}/css/mypage.css?ver=2" rel="stylesheet">
<title>마이 페이지</title>
<style type="text/css">

</style>
</head>
<body>
<!-- Header -->
<jsp:include page="/include/header.jsp" />
<!-- 
	   로그인한 사용자의 경우 사용자 ID를 출력,
	   로그인X 사용자의 경우 로그인페이지로 이동 	   
	 -->
	 <%
	   // 세션정보(ID값 가져오기)
	   String id = (String)session.getAttribute("id");
	   // 로그인 유무 판단 처리 
	   
	   if(id == null){
		  response.sendRedirect("./MemberLogin.me");   
	   }  
	   
	   // id에 맞는 회원의 이름 화면에 출력
	   MemberDAO mdao = new MemberDAO();
	   MemberDTO mdto = mdao.getMember(id);
	   String name = mdto.getName();
	 %>
	 
 <div class="member_div">
 <div class="content">
 <div>
 <h2 class="member_h2">마이쇼핑</h2>
 </div>
	 <!-- 회원 수정,탈퇴 버튼 -->
  <div class="myshop">
  
<!-- 회원 이미지 -->	 
   <div class="top_div">
   <div class="user_left">
   <div class="userImage">
    <img src="//img.echosting.cafe24.com/skin/base_ko_KR/member/img_member_default.gif" 
    class="myshop_benefit_group_image_tag"> 
   </div>
   <div class="userInfo"> 
    <span class="userName"><b><%=name %></b></span>
    <span class="groupName">1% 바로 적립</span>
   </div>
   </div>
   <!-- 회원 정보 -->
   
   <div class="userRight">
   	<div class="quickButton">
   	 <p class="welcome">
    	환영합니다.   
    <b>
    <span>
    <span><%=name %></span>
    </span>
    </b>
    	회원님!
    </p>
    
    <ul>
     <!-- 주문조회 -->
     <li><a href="#">주문 내역</a></li>
     <!-- 장바구니 -->
     <li><a href="./BasketList.ba">장바구니</a></li>
	 <!-- 관심상품 -->
	 <li><a href="#">관심상품</a></li>
	 <!-- 최근 본 상품 -->
	 <li><a href="./recentView.me">최근 본 상품</a></li>
	 <!-- 내가쓴글 -->
	 <li><a href="./BoardList.bo">내 게시글</a></li>
    </ul>
    </div>
    <div class="userButton">
  		<a href="./MemberUpdate.me"><i class='fas fa-user-plus'></i>회원 정보 수정</a>
  		<a href="./MemberDelete.me"><i class="fas fa-user-slash"></i>회원 탈퇴</a>
   
  	</div>
   <div class="mileage_div">
    <ul>
     <!-- 총주문 -->
     <li>
      <strong class="mileage_strong">총 주문</strong>
      <strong class="mileage_strong2">
       <span class="mileage_span">0원</span>
       	
       <span class="mileage_span2">(0회)</span> 	
      </strong>      
     </li>
     <!-- 예치금 -->
     <li>
      <strong class="mileage_strong">예치금</strong>
      <strong class="mileage_strong2">
       <span class="mileage_span">0원</span>
      </strong>
       <a href="#">조회</a>
     </li>
     <!-- 가용 적립금 -->
     <li>
      <strong class="mileage_strong">가용 적립금</strong>
      <strong class="mileage_strong2">
       <span class="mileage_span">2,000원</span>
      </strong>
       <a href="#">조회</a>
     </li>
     <!-- 총 적립금 -->
     <li>
      <strong class="mileage_strong">총적립금</strong>
      <strong class="mileage_strong2">
       <span class="mileage_span">2,000원</span>
      </strong>
     </li>
     <!-- 사용 적립금 -->
     <li>
      <strong class="mileage_strong">사용 적립금</strong>
      <strong class="mileage_strong2">
       <span class="mileage_span">0원</span>
      </strong>
     </li>
     <!-- 쿠폰 -->
     <li>
      <strong class="mileage_strong">쿠폰</strong>
      <strong class="mileage_strong2">
       <span class="mileage_span">0개</span>
      </strong>
       <a href="#">조회</a>
     </li>
    </ul>
   </div>
   </div>
   </div>
  
  <!-- 회원 이미지 끝 -->
   
   
   
   <div class="benefit_div">
    <h3>회원님의 혜택정보</h3>
   <div>
   <!-- 혜택정보(한국) -->
    <div class="benefit_contents">
     <p>
      <span class="benefit_span">
       "저희 쇼핑몰을 이용해 주셔서 감사합니다."
       <strong class="benefit_strong">
        <span>
        <span><%=name %></span>
        </span>
       </strong>
       "회원님은"
       <strong>
        <span>[1%바로 적립]</span>
       </strong>
       "등급 회원이십니다." 
      </span>
     </p>
   </div>
   </div>
   </div>
   <!-- 주문처리현황 -->
   <div class="order_div">
    <h3>
     <span>주문처리 현황</span>
     <span class="desc"><em>(최근 3개월)</em></span>
    </h3>
   <div class="contents">
    <ul class="order_ul">
     <li>
      <span class="order_span">입금전</span>
      <a href="#">
       <span>0</span>
      </a>
     </li>
     <li>
      <span class="order_span">배송준비중</span>
      <a href="#">
       <span>0</span>
      </a>
     </li>
     <li>
      <span class="order_span">배송중</span>
      <a href="#">
       <span>0</span>
      </a>
     </li>
     <li>
      <span class="order_span">배송완료</span>
      <a href="#">
       <span>0</span>
      </a>
     </li>
    </ul>
    <!-- 취소,교환,반품 -->
    <ul class="cs">
     <li>
      <span>취소:</span>
       <a href="#">
       </a>
     </li>
     <li>
      <span>교환:</span>
       <a href="#">
       </a>
     </li>
     <li>
      <span>반품:</span>
       <a href="#">
       </a>
     </li>
    </ul>
   </div>
  </div> 
 
 <!-- 주문 상품 정보 -->
 <div class="info_div">
  <h3>주문상품정보
   <a href="#" class="seemore">더보기>></a>
  </h3>
  <div class="contents">
   <table border="1" summary>
    <caption>주문 상품 정보</caption>
    <colgroup>
    	<col style="width: 160px;">
    	<col style="width: 100px;">
    	<col style="width: auto;">
    	<col style="width: 60px;">
    	<col style="width: 150px;">
    	<col style="width: 140px;">
    </colgroup>
    <thead>
    <tr>
     <th scope="col">주문번호</th>
     <th scope="col">이미지</th>
     <th scope="col">상품정보</th>
     <th scope="col">수량</th>
     <th scope="col">상품구매금액</th>
     <th scope="col">주문처리상태</th>
    </tr>
    </thead>
   </table>
    <p class="empty">
     	주문 내역이 없습니다.
    </p>
  </div>
 </div>
 
 <!-- 내 쿠폰 목 -->
 <div class="coupon_div">
  <h3>내 쿠폰 목록
   <a href="#" class="seemore">더보기>></a>
  </h3>
  <div class="contents">
   <table border="1" summary>
    <caption>내 쿠폰 목록</caption>
    <colgroup>
    	<col style="width: 160px;">
    	<col style="width: 100px;">
    	<col style="width: auto;">
    	<col style="width: 60px;">
    	<col style="width: 150px;">
    	<col style="width: 140px;">
    </colgroup>
    <thead>
    <tr>
     <th scope="col">번호</th>
     <th scope="col">쿠폰명</th>
     <th scope="col">쿠폰적용 상품</th>
     <th scope="col">구매금액</th>
     <th scope="col">쿠폰 혜택</th>
     <th scope="col">사용가능 기간</th>
    </tr>
    </thead>
   </table>
    <p class="empty">
     	보유하고 계신 쿠폰 내역이 없습니다.
    </p>
  </div>
 </div>
 
 <!-- 최근 본 상품 -->
 <div class="recent_div">
  <h3>최근 본 상품
  <a href="./recentView.me" class="seemore">더보기>></a>
  </h3>
  <div class="contents">
  <table border="1" summary>
  <caption>최근 본 상품</caption>
  <colgroup>
    	<col style="width: 100px;">
    	<col style="width: auto;">
    	<col style="width: 220px;">
    	<col style="width: 140px;">
    	<col style="width: 210px;">
    </colgroup>
  	<thead>
	<tr>
		<th scope="col">이미지</th>
		<th scope="col">상품명</th>
		<th scope="col">판매가</th>
		<th scope="col">옵션정보</th>
		<th scope="col">주문</th>
	</tr>
	</thead>
	<tbody>
		<%
		// 쿠키 얻어오기
		Cookie[] cook = request.getCookies();
		if(cook!= null){
			for(int i=0; i<cook.length; i++){
				
			// 전송된 쿠키 이름 얻어오기
			String name1 = cook[i].getName();
			// 쿠키 이름에 item이 포함되어 있다면
			if(name1.indexOf("item")!= -1){
		
			// 해당 value얻어오기
			String value = cook[i].getValue();
			
			String item = URLDecoder.decode(value, "UTF-8");
			out.println(item);
		
			}
		}
				%>
	</tbody>
	</table>
	<%
		}else{
	%>
				<p class=""> 최근 본 상품이 없습니다.</p>
		<%} %>
 </div>
 </div>
 </div>
 
 <!-- 내 게시글 -->
 <div class="board_div">
  <h3>내 게시글
   <a href="#" class="seemore">더보기>></a>
  </h3>
  <div class="contents">
   <table border="1" summary>
    <caption>내 게시글</caption>
    <colgroup>
    	<col style="width: 160px;">
    	<col style="width: 100px;">
    	<col style="width: auto;">
    	<col style="width: 60px;">
    	<col style="width: 150px;">
    	<col style="width: 140px;">
    </colgroup>
    <thead>
    <tr>
     <th scope="col">번호</th>
     <th scope="col">분류</th>
     <th scope="col">제목</th>
     <th scope="col">작성자</th>
     <th scope="col">작성일</th>
     <th scope="col">조회수</th>
    </tr>
    </thead>
   </table>
    <p class="empty">
     	게시글이 없습니다.
    </p>
  </div>
 </div>
 
 </div>
</div>
<!-- FOOTER -->
	<jsp:include page="/include/footer.jsp"/>
</body>
</html>