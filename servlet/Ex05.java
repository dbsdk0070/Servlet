package com.mystudy.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.eclipse.jdt.internal.compiler.env.INameEnvironment;

@WebServlet("/sungjuk")
public class Ex05 extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//(실습)전달받은 데이터를 연산처리 후 결과를 응답
		//1.전달받은 파라미터 값 추출
		String name = request.getParameter("name");
		String skor = request.getParameter("kor");
		int kor = Integer.parseInt(skor);
		int eng = Integer.parseInt(request.getParameter("eng"));
		int math = Integer.parseInt(request.getParameter("math"));
		
		//2.연산처리(총점, 평균 구하기)
		int tot = kor + eng + math;
		double avg = tot * 100 / 3 / 100.0;
		avg = Math.round(tot * 100 / 3.0) / 100.0;
		
		System.out.println("tot : " + tot);
		System.out.println("avg : " + avg);
		
		//3.응답처리(브라우저 쪽으로)
		//table로 작성해도 되고 p태그로 작성해도 됨
		response.setContentType("text/http; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<h3>성적처리결과</h3>");
		out.println("<p>이름: " + name + "</p>");
		out.println("<p>국어: " + kor + "</p>");
		out.println("<p>영어: " + eng + "</p>");
		out.println("<p>수학: " + math + "</p>");
		out.println("<p>-----------------</p>");
		out.println("<p>총점: " + tot + "</p>");
		out.println("<p>평균: " + avg + "</p>");
		out.println("<hr>");
		
		//전달받은 데이터를 연산 처리 후 결과를 응답
		//1.전달받은 파라미터 값 추출
//		String name = request.getParameter("name");
//		int kor = Integer.parseInt(request.getParameter("kor"));
//		int eng = Integer.parseInt(request.getParameter("eng"));
//		int math = Integer.parseInt(request.getParameter("math"));
//		
//		//2. 연산처리(총점, 평균 구하기)
//		int total = ( kor + eng + math );
//		double avg = total * 100 / 3 / 100.0;
//			      
//		//3. 응답처리(브라우저 쪽으로)
//			      out.println("<h3>성적처리결과</h3>");
//			      out.println("<table border>");
//			      
//			      out.println("<tr>");
//			      out.println("<th>이름</th>");
//			      out.println("<th>" +name+ "</th>");
//			      out.println("</tr>");
//			      
//			      out.println("<tr>");
//			      out.println("<th>국어</th>");
//			      out.println("<th>" +kor+ "</th>");
//			      out.println("</tr>");
//			      
//			      out.println("<tr>");
//			      out.println("<th>영어</th>");
//			      out.println("<th>" +eng+ "</th>");
//			      out.println("</tr>");
//			      
//			      out.println("<tr>");
//			      out.println("<th>수학</th>");
//			      out.println("<th>" +math+ "</th>");
//			      out.println("</tr>");
//			      
//			      out.println("<tr>");
//			      out.println("<th>총점</th>");
//			      out.println("<th>" + total + "</th>");
//			      out.println("</tr>");
//			      
//			      out.println("<tr>");
//			      out.println("<th>평균</th>");
//			      out.println("<th>" + avg + "</th>");
//			      out.println("</tr>");
//			      
//			      out.println("</table>");
	}
}
