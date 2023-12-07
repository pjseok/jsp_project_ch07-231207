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
		//쿠키 가져오기(클라이언트 컴퓨터에 저장되어 있는 쿠키를 서버에 가져옴) 
		Cookie[] cookies = request.getCookies(); 
		//클라이언트 컴퓨터에서 쿠키들이 들어있는 쿠키의 배열을 저장
		//for(int i=0;i<cookies.length;i++){
			//out.println("쿠키의 이름: "+cookies[i].getName()+"<br>");
			//out.println("쿠키의 값: "+cookies[i].getValue()+"<br>");
		//}
		//String loginOkid = cookies[0].getValue();
		String loginOkid = "";
		if(cookies != null){
			for(int i=0;i<cookies.length;i++){
				if(cookies[i].getName().equals("cookieid")){
					loginOkid = cookies[i].getValue();
				}
				} 
			} else{
				response.sendRedirect("login.jsp");
		
		}	
	%>
	<%= loginOkid %><h1>님 로그인을 환영합니다.</h1>
	<a href = "logout.jsp">로그아웃</a>
</body>
</html>