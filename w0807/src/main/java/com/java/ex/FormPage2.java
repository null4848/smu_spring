package com.java.ex;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FormPage2
 */
@WebServlet("/FormPage2")
public class FormPage2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doActon 실행");
		String name = request.getParameter("name");
		String kor = request.getParameter("kor");
		String eng = request.getParameter("eng");
		String math = request.getParameter("math");
		
		int nkor = Integer.parseInt(kor);
		int neng = Integer.parseInt(eng);
		int nmath = Integer.parseInt(math);
		
		System.out.println("name :"+name);
		System.out.println("kor :"+kor);
		System.out.println("eng :"+eng);
		System.out.println("math :"+math);
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();
		
		writer.println("<html>");
		writer.println("<head>");
		writer.println("<title>학생성적</title>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h2>학생성적</h2>");
		writer.println("<p> 이름 : " +name+ "</p>");
		writer.println("<p> 국어 : " +kor+ "</p>");
		writer.println("<p> 영어 : " +eng+ "</p>");
		writer.println("<p> 수학 : " +math+ "</p>");
		writer.println("</body>");
		writer.println("</html>");
		
		writer.close();
		
		
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doGet 접속");
		doAction(request,response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doPost 접속");
		doAction(request,response);
	}

}
