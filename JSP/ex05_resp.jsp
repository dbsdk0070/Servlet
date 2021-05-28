<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--전달받은 데이터를 사용해서 계산처리후 결과를 ㅔㅌ이블 형태로 작성 --%>    
<%
	//1.전달받은 파라미터 값 추출
	String name = request.getParameter("name");
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int math = Integer.parseInt(request.getParameter("math"));
	
	//2.계산처리
	int sum = ( kor + eng + math );
	double avg = sum / 3;
	
	//3.화면출력
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성적처리결과</title>

</head>
<body>
	<h2>성적처리결과</h2>
	<table border>
		<thead>
			<tr>
				<th colspan="2">성적처리결과</th>
			</tr>
		</thead>
			<tr>
				<th>이름</th>
				<td><%=name %></td>
			</tr>
			<tr>
				<th>국어</th>
				<td><%=kor %></td>
			</tr>
			<tr>
				<th>영어</th>
				<td><%=eng %></td>
			</tr>
			<tr>
				<th>수학</th>
				<td><%=math %></td>
			</tr>
			<tr>
				<th>총점</th>
				<td><%=sum %></td>
			</tr>
			<tr>
				<th>평균</th>
				<td><%=avg %></td>
			</tr>
		<thead>
		</thead>
	</table>
</body>
</html>