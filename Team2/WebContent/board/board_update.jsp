<%@page import="team2.board.action.cSet"%>
<%@page import="team2.board.db.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	function save(){
	    oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
	    document.fr.submit();
	};
</script>
</head>
<body>
	<h1>WebContent/board/board_update.jsp</h1>
	
	<%
		BoardDTO bdto = (BoardDTO)request.getAttribute("bdto");
		String pageNum = (String)request.getAttribute("pageNum");

	%>
	<!-- 메인,서브 카테고리 저장 -->
	<c:set var="m_ca" value="<%=bdto.getB_category() %>" />
	<c:set var="s_ca" value="<%=bdto.getB_p_cate() %>" />
	
	<form name= "fr" action="./BoardUpdateAction.bo?pageNum=${pageNum}" method="post">
		<input type="hidden" name="num" value="<%=bdto.getB_idx() %>">	
			
			글번호  <%=bdto.getB_idx() %> <br>
			조회수 <%=bdto.getB_view()%> <br>

			카테고리
			<select name="b_category">
				<%for(int i = 0; i<cSet.Category.length; i++){ %>
					<c:set var="cSet_m" value="<%=cSet.Category[i] %>" />
					<option value=<%=cSet.Category[i] %> <c:if test="${m_ca eq cSet_m}">selected</c:if>><%=cSet.Category[i]%></option>
				<%} %>
			</select><br>

			세부카테고리
			<select name="b_p_cate">
				<%for(int i = 0; i<cSet.p_Category.length; i++){ %>
				<c:set var="cSet_s" value="<%=cSet.p_Category[i] %>" />
					<option value=<%=cSet.p_Category[i] %> <c:if test="${s_ca eq cSet_s}">selected</c:if>><%=cSet.p_Category[i] %></option>
				<%} %>
			</select><br>

			제목 <input type="text" name="title" value="<%=bdto.getB_title()%>"></td>
			<br>
			첨부파일  <br>
			<%String files[] = bdto.getB_file().split(","); %>
			<c:set var="files" value="<%=files %>" />
			<c:forEach var="file" items="${files}">
			${file} <a href="${getContextPath}/deleteFileAction.bo?file=${file} ">
 			삭제하기 </a><br>
			 </c:forEach>
			<input type="file" name="file" >
			
			<br>

			내용
			<textarea name="content" id="content" rows="20" cols="140">
			<%=bdto.getB_content()%>
			</textarea> <br>

				<input type="button" onclick="return save();" value="수정하기"/>
		
				<input type="reset" value="다시 쓰기">
				
				<input type="button" value="뒤로가기"
					onclick="location.href='javascript:history.back()'">
				<input type="button" value="목록이동"
					onclick="location.href='./BoardMain.bo'">

	</form>
	
	
</body>

<script type="text/javascript">

	var oEditors = [];
	nhn.husky.EZCreator.createInIFrame({
	 oAppRef: oEditors,
	 elPlaceHolder: "content",
	 sSkinURI: "${pageContext.request.contextPath}/editor/SmartEditor2Skin.html",
	 
	 //컨텐츠 이미지 업로드
	 fOnAppLoad:function(){
		 oEditors.getById["content"].exec("PASTE_HTML", [content.getValue()]);
	 },

	 fCreator: "createSEditor2"
	});

	
</script>
</html>