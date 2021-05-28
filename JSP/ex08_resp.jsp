<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--주문한 내역에 따라 계산하고 결과를 표시 --%>
<%
	//(실습)
	//1.파라미터 값 추출
	//ex08_resp.jsp?coffee=4&su=1&money=10000
	
    //int coffee = Integer.parseInt(request.getParameter("coffee"));
    //int su = Integer.parseInt(request.getParameter("su"));
    //int money = Integer.parseInt(request.getParameter("money"));
    
    String coffee = request.getParameter("coffee");
    int su = Integer.parseInt(request.getParameter("su"));
    int money = Integer.parseInt(request.getParameter("money"));
    
    //메뉴에 따라 가격 설정(계산 처리하기 위한 전처리)
    //switch (coffee) {
    //case 1 : menu = "아메리카노"; jan=3000;
    //	break;
    //case 2 : menu = "카페모카"; jan=3300;
    //	break;
    //case 3 : menu = "에스프레소"; jan=2500;
    //	break;
    //case 4 : menu = "카페라떼"; jan=4000;
    //	break;
    //}
    
    //2. 계산처리(구입금액, 잔액)
    //String menu = ""; //음료명
    //int jan = 0;  //커피 단가
    //int total = 0; // 총 금액
    //int change = 0; // 거스름돈
    
    //메뉴에 따라 가격 설정(계산 처리하기 위한 전처리)
    String menu = "메뉴없음";
    int dan = 0;
    if("1".equals(coffee)){
    	menu = "아메리카노";
    	dan = 3000;
    }else if("2".equals(coffee)){
    	menu = "카페모카";
    	dan = 3500;
    }else if("3".equals(coffee)){
    	menu = "에스프레소";
    	dan = 2500;
    }else if("4".equals(coffee)){
    	menu = "카페라떼";
    	dan = 4000;
    }
    System.out.println("menu : " + menu + ", dan : " + dan);
    
    //2. 계산처리(구입금액, 잔액)
    int total = dan * su; //구입총액
    int change = money - total; //잔액(거스름돈)
    
   
    //총금액
    //total = jan * su;
    //change = money - total;
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문결과</title>
</head>
<body>
	<h2>주문 계산 결과(응답)</h2>
<%--
	커피종류 : 아메리카노
	단가 : 3000원
	수량 : 3
	구입금액 : 9000(단가*수량)
	---------------------
	입금액 : 10000원
	잔액 : 1000원(입금액 - 구입금액)
--%>
	
	<%-- 3.계산 결과를 화면에 출력 --%>
	<ul>
		<li>커피종류 : <%= menu %></li>
		<li>단가 : <%= dan %></li>
		<li>수량 : <%= su %></li>
		<li>구입금액 : <%= total %></li>
		<li>---------------------</li>
		<li>입금액 : <%= money %></li>
		<li>잔액 : <%= change %></li>
	</ul>
</body>
</html>