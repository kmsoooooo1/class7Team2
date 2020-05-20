<%@page import="team2.wishlist.db.WishlistDTO"%>
<%@page import="team2.product.db.ProductDTO"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath}/css/product_list.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<title>Insert title here</title>
</head>
<body>

	<!-- Header -->
	<header> <jsp:include page="/include/header.jsp" /> </header>
	
	<%
		List wishList = (List) request.getAttribute("wishList");
		List productInfoList = (List) request.getAttribute("productInfoList");
		
	%>
	
	<!-- 관심상품 리스트 생성 -->
	<div class="container">
	
	Wish List
	
	<hr>
	
	<ul class="ul_wrap">
	
	<%
		int size = productInfoList.size();
		int col = 4;
		int row = (size/col) + (size%col>0? 1:0);
		int num = 0;
		
		for(int a=0; a<row; a++){
			
	%>
		<%
			for(int i=0; i<col; i++){
				WishlistDTO wldto = (WishlistDTO)wishList.get(num);
				ProductDTO pdto = (ProductDTO)productInfoList.get(num);
				//###,###,###원 표기하기 위해서 format 바꾸기
				DecimalFormat formatter = new DecimalFormat("#,###,###,###");
				String newformat_price_origin = formatter.format(pdto.getProduct_price_origin());
				String newformat_price_sale = formatter.format(pdto.getProduct_price_sale());
				String newformat_discount_rate = formatter.format(pdto.getProduct_discount_rate());
		
		%>
		
		<li>
		<div class="list_wrap">
			<input type="checkbox" id="chkBox" name="chkBox" style="display: none;">
			<a href="./GoodsDetail.go?g_code=<%=wldto.getW_code()%>"><img src="./upload/multiupload/<%=pdto.getProduct_thumbnail()%>" width="100" height="100"></a>
			<a href="./GoodsDetail.go?g_code=<%=wldto.getW_code()%>"><%=pdto.getProduct_name()%></a> <br>
			<%if(pdto.getProduct_discount_rate() != 0){ //할인율 있으면%>
				<span style="text-decoration: line-through;"><%=newformat_price_origin%></span>원 
				<span style="color: #f0163a;"><%=newformat_price_sale%></span>원 
				<%=newformat_discount_rate%>% 할인
			<%}else{// 할인율 없으면 %>	
				<%=newformat_price_origin%>원 	
				<%=newformat_discount_rate%>% 할인
			<%} %>
		</div>
		
		</li>	
		
		<% 	
				num++;
				if(size <= num) break;
				
			}	
		%>
	<%} %>
	</ul>
	
	<div id="btn1" name="btn1"> <button type="button" onclick="checkBoxOn();">편집</button> </div>
	<div id="btn2" name="btn2" style="display: none;">
		<button onclick="dellChkBox();">삭제</button>
		<button onclick="cancel();">취소</button>
	</div>
	
	
	<ul id="pageList">
		<li>1</li>
		<li>2</li>
		<li>3</li>
	</ul>
	</div>
	
	
	<!-- Footer -->
	<footer> <jsp:include page="/include/footer.jsp" /> </footer>
	

</body>

<script type="text/javascript">
	
	// 편집 버튼 클릭 시 체크박스 on
	function checkBoxOn(){
		$("input[name='chkBox']:checkbox").show();
		
		$("#btn1").hide();
		$("#btn2").show();
	}
	
	function dellChkBox(){
		
	}
	
	function cancel(){

		$("input[name='chkBox']:checkbox").hide();
		$("#btn1").show();
		$("#btn2").hide();
	}

</script>
</html>