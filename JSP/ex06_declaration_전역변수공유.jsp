<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선언부 선언변수</title>
</head>
<body>
<%!
	//선언부(declaration)는 필드영역에 작성되는 코드
	//선언부에 선언된 필드변수는 값이 하나(공유해서 사용)
	int globalNum = 0;
%>
<%
	//스크립트릿 - service() 메소드 영역(메소드 내에 작성(로컬영역), 서비스 요청시 호출 실행)
	//localNum은 로컬영역이기 때문에 호출할때마다 초기화됨
	int localNum = 0;	//지역변수
	globalNum ++;
	localNum ++;
	System.out.println("globalNum : " + globalNum);
	System.out.println("localNum : " + localNum);
%>
	<h1>선언부 선언변수(전역변수, 필드변수)</h1>
	<h2>globalNum : <%=globalNum %></h2>
	<h2>localNum : <%=localNum %></h2>
	
</body>
</html>








