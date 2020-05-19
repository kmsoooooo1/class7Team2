<%@page import="team2.admin.goods.action.GoodsDeleteAction"%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="team2.goods.db.GoodsDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath}/css/product_list.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
	
	<%
		String category = request.getParameter("category");
		String sub_category = request.getParameter("sub_category");
		String sub_category_index = request.getParameter("sub_category_index");
		String g_code = request.getParameter("g_code");
		if(sub_category_index == null){ 
			sub_category_index = "";
		}
		
		
		// GoodsListAction 객체에서 저장된 정보를 저장
		List<GoodsDTO> goodsList = (List<GoodsDTO>)request.getAttribute("goodsList");
	%>
	
	<!-- Header -->
	<header> <jsp:include page="/include/header.jsp" /> </header>
	
	<!-- Main Content -->
	
	<%if(category.equals("먹이")){ %>
	<div class="container">
	   <div class="menu">
	   	<input type="button" value="전체보기" class="a_btn"
	   		onclick="location.href='./GoodsList.go?category=먹이'">
	   	<input type="button" value="칼슘/약품" class="a_btn"
	   		onclick="location.href='./GoodsList.go?category=먹이&sub_category=칼슘/약품'">
	   	<input type="button" value="생먹이" class="a_btn"
	   		onclick="location.href='./GoodsList.go?category=먹이&sub_category=생먹이'">
	   	<input type="button" value="냉동먹이" class="a_btn"
	   		onclick="location.href='./GoodsList.go?category=먹이&sub_category=냉동먹이'">
	   	<input type="button" value="인공사료" class="a_btn"
	   		onclick="location.href='./GoodsList.go?category=먹이&sub_category=인공사료'">
	</div>
	<%} else if(category.equals("사육용품")){ %>
	<div class="container">
	   <div class="menu">
	    <input type="button" value="전체보기" class="a_btn"
	    	onclick="location.href='./GoodsList.go?category=사육용품'">
	    <input type="button" value="*사육장" class="a_btn"
	    	onclick="location.href='./GoodsList.go?category=사육용품&sub_category=사육장'">	
	    <input type="button" value="유리/테라리움" class="a_btn"
	    	onclick="location.href='./GoodsList.go?category=사육용품&sub_category=사육장&sub_category_index=유리/테라리움'">
	    <input type="button" value="플라스틱" class="a_btn"
	    	onclick="location.href='./GoodsList.go?category=사육용품&sub_category=사육장&sub_category_index=플라스틱'">
	    <input type="button" value="*장식/그릇" class="a_btn"
	    	onclick="location.href='./GoodsList.go?category=사육용품&sub_category=장식/그릇'">
	    <input type="button" value="장식" class="a_btn"
	    	onclick="location.href='./GoodsList.go?category=사육용품&sub_category=장식/그릇&sub_category_index=장식'">
	    <input type="button" value="은신처" class="a_btn"
	    	onclick="location.href='./GoodsList.go?category=사육용품&sub_category=장식/그릇&sub_category_index=은신처'">
	    <input type="button" value="물/먹이그릇" class="a_btn"
	    	onclick="location.href='./GoodsList.go?category=사육용품&sub_category=장식/그릇&sub_category_index=물/먹이그릇'">
	    <input type="button" value="*램프" class="a_btn"
	    	onclick="location.href='./GoodsList.go?category=사육용품&sub_category=램프'">
	    <input type="button" value="UVB/스팟" class="a_btn"
	    	onclick="location.href='./GoodsList.go?category=사육용품&sub_category=램프&sub_category_index=UVB/스팟'">
	    <input type="button" value="소켓" class="a_btn"
	    	onclick="location.href='./GoodsList.go?category=사육용품&sub_category=램프&sub_category_index=소켓'">
	    <input type="button" value="악세사리" class="a_btn"
	    	onclick="location.href='./GoodsList.go?category=사육용품&sub_category=램프&sub_category_index=악세사리'">
	    <input type="button" value="*바닥재" class="a_btn"
	    	onclick="location.href='./GoodsList.go?category=사육용품&sub_category=바닥재'">
	    <input type="button" value="건계" class="a_btn"
	    	onclick="location.href='./GoodsList.go?category=사육용품&sub_category=바닥재&sub_category_index=건계'">
	    <input type="button" value="습계" class="a_btn"
	    	onclick="location.href='./GoodsList.go?category=사육용품&sub_category=바닥재&sub_category_index=습계'">
	    <input type="button" value="*온/습도 관련" class="a_btn"
	    	onclick="location.href='./GoodsList.go?category=사육용품&sub_category=온/습도 관련'">
	    <input type="button" value="온습도계" class="a_btn"
	    	onclick="location.href='./GoodsList.go?category=사육용품&sub_category=온/습도 관련&sub_category_index=온습도계'">
	    <input type="button" value="온도조절기" class="a_btn"
	    	onclick="location.href='./GoodsList.go?category=사육용품&sub_category=온/습도 관련&sub_category_index=온도조절기'">
	    <input type="button" value="습도조절기" class="a_btn"
	    	onclick="location.href='./GoodsList.go?category=사육용품&sub_category=온/습도 관련&sub_category_index=습도조절기'">
	    <input type="button" value="*보조용품" class="a_btn"
	    	onclick="location.href='./GoodsList.go?category=사육용품&sub_category=보조용품'">
	    <input type="button" value="위생/청소" class="a_btn"
	    	onclick="location.href='./GoodsList.go?category=사육용품&sub_category=보조용품&sub_category_index=위생/청소'">
	    <input type="button" value="안전/치료" class="a_btn"
	    	onclick="location.href='./GoodsList.go?category=사육용품&sub_category=보조용품&sub_category_index=안전/치료'">
	    <input type="button" value="브리딩" class="a_btn"
	    	onclick="location.href='./GoodsList.go?category=사육용품&sub_category=보조용품&sub_category_index=브리딩'">
	    <input type="button" value="기타" class="a_btn"
	    	onclick="location.href='./GoodsList.go?category=사육용품&sub_category=보조용품&sub_category_index=기타'">
	    <input type="button" value="*수족관" class="a_btn"
	    	onclick="location.href='./GoodsList.go?category=사육용품&sub_category=수족관'">
	    <input type="button" value="수질안정제" class="a_btn"
	    	onclick="location.href='./GoodsList.go?category=사육용품&sub_category=수족관&sub_category_index=수질안정제'">
	    <input type="button" value="여과기" class="a_btn"
	    	onclick="location.href='./GoodsList.go?category=사육용품&sub_category=수족관&sub_category_index=여과기'">
	    <input type="button" value="히터기" class="a_btn"
	    	onclick="location.href='./GoodsList.go?category=사육용품&sub_category=수족관&sub_category_index=히터기'">
	    <input type="button" value="거북이육지" class="a_btn"
	    	onclick="location.href='./GoodsList.go?category=사육용품&sub_category=수족관&sub_category_index=거북이육지'">
	    <input type="button" value="기타" class="a_btn"
	    	onclick="location.href='./GoodsList.go?category=사육용품&sub_category=수족관&sub_category_index=기타'">
	   </div>
	
	<%} %>
	
	<span> Total <%=goodsList.size() %> items </span>
	<ul class="ul_wrap">
		<%
			int size = goodsList.size();
			int col = 4;
			int row = (size/col) + (size%col>0? 1:0);
			int num = 0;
			
			for(int a = 0; a < row; a++){
		%>
			<%
				for(int i=0; i<col; i++){
					GoodsDTO gdto = goodsList.get(num);
					//###,###,###원 표기하기 위해서 format 바꾸기
					DecimalFormat formatter = new DecimalFormat("#,###,###,###");
					String newformat_price_origin = formatter.format(gdto.getG_price_origin());
					String newformat_price_sale = formatter.format(gdto.getG_price_sale());
				
					
			%>
			<li>
			<div class="list_wrap">
				<a href='./GoodsDetail.go?g_code=<%=gdto.getG_code()%>'><img src="./upload/multiupload/<%=gdto.getG_thumbnail()%>" width="300" height="300"> </a><br>
				<a href='./GoodsDetail.go?g_code=<%=gdto.getG_code()%>'><%=gdto.getG_name() %></a> 
				<hr>
				<%if(gdto.getG_discount_rate() != 0){ // 만약 할인율 있으면 %>
					<span style="text-decoration: line-through;"> <%=newformat_price_origin %>원 </span> <br>
					<span style="color: #f0163a; font-weight: bold;"> 할인판매가 : <%=newformat_price_sale %>원 </span> <br>
				<%}else{ //할인 안하면 %>
					<%=newformat_price_origin %>원 <br>
				<%} %>
				
				<!-- 만약 수량이 0이면 soldout 문구 띄우기 -->
				<%if(gdto.getG_amount() == 0){ %>
					<span style="background-color: #cd6860; color: white; font-size: 6px; border: 1px solid #cd6860;"> SOLD OUT </span>
				<%} %>
				</div>
			</li>	
			<%
				num ++;
				if(size <= num) break;
				
				}
			%>
		
		<%} %>
	</ul>
	<ul id="pageList">
		<li>1</li>
		<li>2</li>
		<li>3</li>
	</ul>
	</div>
	
	<!-- FOOTER -->
	<footer> <jsp:include page="/include/footer.jsp"/> </footer>
	
	
</body>
</html>