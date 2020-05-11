<%@page import="team2.board.db.PDAO"%>
<%@page import="team2.board.db.ProductDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="team2.board.action.cSet"%>
<%@page import="team2.goods.db.GoodsDAO"%>
<%@page import="java.util.List"%>
<%@page import="team2.animal.db.AnimalDAO"%>
<%@page import="team2.animal.db.AnimalDTO"%>
<%@page import="team2.goods.db.GoodsDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	
	String product = request.getParameter("product");
	String cate = request.getParameter("cate");
	String animal_kind = request.getParameter("animal_kind");
	
	List<ProductDTO> list = null;
	GoodsDAO gdao = new GoodsDAO();
	AnimalDAO adao = new AnimalDAO();
	if(product==null){
		//	전체상품 검색
		list = PDAO.getProduct(gdao.getGoodsList(), adao.getAnimalList("all", "", ""));
	}else if(product.equals("ANIMAL")){
		//	animal 검색
		if(cate==null){
			list = PDAO.getProduct(null, adao.getAnimalList("all", "", ""));
		}else if(cate!=null && animal_kind==null){
			list = PDAO.getProduct(null, adao.getAnimalList(cate, "all", ""));
		}else if(cate!= null && animal_kind!=null){
			list = PDAO.getProduct(null, adao.getAnimalList(cate, animal_kind, "all"));
		}
	}else if(product.equals("GOODS")){
		//	goods 검색
		list = PDAO.getProduct(gdao.GoodsList("all", "", ""),null);
	}
	gdao.closeDB();
	adao.closeDB();
	
	System.out.println("product : " + product);
	System.out.println("cate : " + cate);
	System.out.println("animal_kind : " + animal_kind);
	
	String[] cList = {};
		
	cSet cset = new cSet();
	
%>
	<div id="container">
		<div>
		<form name="fr" method="post">
			<select name="product" onchange="return pChange();">
				<option value="-">전체</option>
				<option value="ANIMAL" <%if(product!=null && product.equals("ANIMAL")){ %> selected="selected" <%} %>>동물</option>
				<option value="GOODS" <%if(product!=null && product.equals("GOODS")){ %> selected="selected" <%} %>>상품</option>
			</select>
		<%if(product!=null && !product.equals("-")){
			if(product.equals("ANIMAL")){
				cList = cset.ANIMAL;
			}else if(product.equals("GOODS")){
				cList = cset.GOODS;
			}
		}
		%>
		<select name="cate" onchange="return cChange();">
			<option value="-">전체</option>
		<%if(cList.length>0){
			for(String str:cList){ %>
			<option value=<%=str %> <%if(cate!=null && cate.equals(str)){ %> selected="selected" <%} %>><%=str %></option>		
		<%	}
		  }%>
		</select>
		<%
		  if(product!=null && product.equals("ANIMAL") && cate!=null){
		  	if(cate.equals("파충류")){
		  		cList = cset.ANIMAL_R;
		  	}else if(cate.equals("양서류")){
		  		cList = cset.ANIMAL_A;
		  	}
		  }
		  %>
		  	<select name="animal_kind" onchange="return aChange();">
		  		<option value="-">전체</option>
  		<%if(cList.length>0){
  			for(String str:cList){ %>
  			<option value=<%=str %> <%if(animal_kind!=null && str.equals(animal_kind)){ %> selected="selected" <%} %>><%=str %></option>
  		<%	}
		  } %>
		  	</select>
			<input type="text" name="keyword" ><input type="submit" value="Search">
		</form>
			<div class="search_list">
				<table>
					<tr>
						<th>CODE</th>
						<th>IMAGE</th>
						<th>NAME</th>
						<th>CATEGORY</th>
						<th>SUB CATEGORY</th>					
						<th>DETAIL</th>						
					</tr>
			<%if(list.size()>0){ 
				for(ProductDTO dto:list){%>
					<tr>
						<td><%=dto.getP_code() %></td>
						<td><img src="./upload/multiupload/<%=dto.getImg_src() %>" alt="" width="100" height="100"></td>
						<td><%=dto.getName() %></td>
						<td><%=dto.getCategory() %></td>
						<td><%=dto.getSub_category() %></td>
						<td><%=dto.getSub_category_idx() %></td>
					</tr>
			<%}
			}else{ %>
					<tr>
						<td colspan="6">상품목록이 없습니다</td>
					</tr>
			<%} %>
				</table>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	var Product = document.fr.product;
	var Cate = document.fr.cate;
	var Animal = document.fr.animal_kind;
<%if(product==null){%>
	Cate.style.display = "none";
	Animal.style.display = "none";
<%}%>
<%if(cate==null){%>
	Animal.style.display = "none";
<%}%>
<%if(product!=null && product.equals("GOODS")){%>
	Animal.style.display = "none";
<%}%>
	
	function pChange(){
		if(Product.value=="-"){
			Product.value= "all";
			Cate.value = "";
			Animal.value = "";
		}else{
			Cate.value = "";
			Animal.value = "";
		}
		document.fr.submit();
	}
	function cChange(){
		if(Cate.value=="-"){
			Cate.value = "";
			Animal.value = "";
		}else{
			Animal.value="";
		}
		document.fr.submit();
	}
	function aChange(){
		if(Animal.value=="-"){
			Animal.value="";
		}
		document.fr.submit();
	}
</script>

</html>