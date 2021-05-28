<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//요청한 웹사이트로 이동처리
	String site = request.getParameter("site");
	System.out.println(">> ex10_resp_redirect.jsp site : " + site);
	
	switch(site){
	case "naver" : //네이버 웹페이지로 이동처리
		response.sendRedirect("https://www.naver.com"); 
		break;
	case "google" : //구글 웹페이지로 이동처리
		response.sendRedirect("https://www.google.co.kr"); 
		break;
	case "daum" : //다음 웹페이지로 이동처리
		response.sendRedirect("https://www.daum.net"); 
		break;
	}
	
%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>응답</title>
</head>
<body>
	<h1>응답페이지(ex10_resp_redirect.jsp)</h1>
</body>
</html>