<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
		
		for(int i=0;i<cookies.length;i++){
			cookies[i].setMaxAge(0); //쿠키의 유효시간을 0으로 세팅 -> 쿠키삭제
			response.addCookie(cookies[i]);
		}
	%>
	
	<a href = "cookieTest.jsp">쿠키체크 페이지 가기</a>
</body>
</html>