<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>쿠키저장</title>
	</head>
	<body>
	  <%
	  String nct_yushi = request.getParameter("nct)")
	    //쿠키저장
	    //쿠키객체선언
	    Cookie cookie = new Cookie("cookie_id","aaa");
	    
	    //쿠키시간설정
	    cookie.setMaxAge(60*60*24);
	    
	    //쿠키저장
	    response.addCookie(cookie);
	    
	    
	    response.sendRedirect("./product_list.jsp");
	  
	  %>
	
	</body>
</html>