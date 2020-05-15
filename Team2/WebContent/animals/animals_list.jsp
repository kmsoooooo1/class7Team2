<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.List"%>
<%@page import="team2.animal.db.AnimalDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/css/product_list.css" rel="stylesheet">
</head>
<body>

	<%
		String category = request.getParameter("category");
		String sub_category = request.getParameter("sub_category");
		String sub_category_index = request.getParameter("sub_category_index");
		if(sub_category_index == null){ 
			sub_category_index = "";
		}
	
		//AnimalListAction 객체에서 저장된 정보를 저장 
		List<AnimalDTO> animalList = (List<AnimalDTO>) request.getAttribute("animalList");
	%>

	<!-- Header -->
	<jsp:include page="/include/header.jsp" />
	
	<!-- Main Content -->
	<div class="container">
		<div class="menu">
		 <input type="button" value="전체보기" class="a_btn"
		 	onclick="location.href='./AnimalList.an?category=파충류'">
		 <input type="button" value="리자드/모니터" class="a_btn" 
		 	onclick="location.href='./AnimalList.an?category=파충류&sub_category=도마뱀&sub_category_index=리자드/모니터'">
		 <input type="button" value="레오파드/게코" class="a_btn" 
		 	onclick="location.href='./AnimalList.an?category=파충류&sub_category=도마뱀&sub_category_index=레오파드 게코'">
		 <input type="button" value="크레스티드 게코" class="a_btn" 
		 	onclick="location.href='./AnimalList.an?category=파충류&sub_category=도마뱀&sub_category_index=크레스티드 게코'">
		 <input type="button" value="카멜레온" class="a_btn" 
		 	onclick="location.href='./AnimalList.an?category=파충류&sub_category=도마뱀&sub_category_index=카멜레온'">
		</div>
		<span class="a_amount"> Total <%=animalList.size()%> items</span>
		<ul class="ul_wrap">
			
		<%	if(animalList.size()>0){
				for (int i = 0; i <animalList.size(); i++) {
					AnimalDTO adto = animalList.get(i);
					//###,###,###원 표기하기 위해서 format 바꾸기
					DecimalFormat formatter = new DecimalFormat("#,###,###,###");
					String newformat_price_origin = formatter.format(adto.getA_price_origin());
					String newformat_price_sale = formatter.format(adto.getA_price_sale());
			%>
				<li>
					<div class="list_wrap">
		  			<a href='./AnimalDetail.an?a_code=<%=adto.getA_code()%>'> <img class="list_img" src="./upload/multiupload/<%=adto.getA_thumbnail()%>" width="300" height="300"> </a> <br> 
				    <a href='./AnimalDetail.an?a_code=<%=adto.getA_code()%>'> <%=adto.getA_morph()%>/<%=adto.getA_sex()%>/<%=adto.getA_status()%> </a>
				    <%if(adto.getA_discount_rate() != 0) { //만약 할인율이 있으면%>
				    	<span style="text-decoration:line-through"> <%=newformat_price_origin%>원 </span> <br>
				    	<span style="color: #f0163a; font-weight: bold;"> 할인판매가 : <%=newformat_price_sale%>원 </span> <br>
				    <%}else{ //없으면%>
				   		<%=newformat_price_origin%>원 <br>
					<%}%>
					
					<!-- 만약 수량이 0이면 soldout 문구 띄우기 -->
					<%if(adto.getA_amount() == 0){%>
						<span style="background-color: #cd6860; color: white; font-size: 6px; border: 1px solid #cd6860;"> SOLD OUT </span>
					<%}%>
					</div>
				</li>
			<%	}
			}else{%>
				<li>
					<div class="list_wrap">
						해당되는 동물이 없습니다.
					</div>
				</li>
		<%} %>
		</ul>
		<ul id="pageList">
			<li>1</li>
			<li>2</li>
			<li>3</li>
		</ul>
	</div>
	<!-- FOOTER -->
	<jsp:include page="/include/footer.jsp"/>
	
</body>
</html>