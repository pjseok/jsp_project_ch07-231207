<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		
		if(mid.equals("tiger") && mpw.equals("12345")){
			Cookie cookie1 = new Cookie("cookieid", mid); //쿠키1 생성
			Cookie cookie2 = new Cookie("cookiepw", mpw); //쿠키2 생성
			
			response.addCookie(cookie1); //생성된 쿠키1을 클라이언트 컴퓨터로 전송
			response.addCookie(cookie2); //생성된 쿠키1을 클라이언트 컴퓨터로 전송
			
			response.sendRedirect("loginSuccess.jsp");
			
			
		}else{// 로그인 실패
			response.sendRedirect("loginFail.jsp");
		}
	%>
</body>
</html>