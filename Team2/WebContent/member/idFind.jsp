<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디찾기 페이지</title>
</head>
<body>
	<!-- Header -->
<header> <jsp:include page="/include/header.jsp" /> </header>

아이디 찾기
<div class="contents">
 <form action="./MemberIDFindAction.me" method="post">
  <h2>ID FIND</h2>
   <label>가입하신 이메일 주소를 입력해주세요</label><br>
   <input type="text" name="email">
   <input type="submit" class="btn" value="아이디 찾기">
   <input type="button" class="btn" value="로그인 페이지로" onclick="location.href='./MemberLogin.me';">
 </form>
</div>


	<!-- FOOTER -->
<footer> <jsp:include page="/include/footer.jsp"/> </footer>

</body>
</html>