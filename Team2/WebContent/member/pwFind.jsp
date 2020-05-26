<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비밀번호 찾기 페이지</title>
<link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<!-- Header -->
	<jsp:include page="/include/header.jsp" />

<div class="contents">
 <form action="./MemberPWFindAction.me" method="post" class="box">
  <h2>비밀번호 찾기</h2>
   <input type="text" name="email" placeholder="가입하신 이메일주소를 입력해주세요."><br>
   <input type="text" name="id" placeholder="아이디를 입력해주세요.">
   <input type="submit" value="비밀번호 찾기">
   <input type="button" class="btn" value="로그인 페이지로" onclick="location.href='./MemberLogin.me';">
 </form>
</div>

	<!-- FOOTER -->
	<jsp:include page="/include/footer.jsp"/>

</body>
</html>