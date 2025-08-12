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
		// 데이터 읽어오기
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String checkId = request.getParameter("checkId");
		if(request.getParameter("checkId") != null){
			String checkId = request.getParameter("checkId");
			
			if(checkId.equals("1")){
				//쿠키저장
				//쿠키객체선언 - save_id id를 저장하는 프로그램을 구현하시오.
				Cookie cookie = new Cookie("save_id", "aaa");
				
				// 쿠키 시간 설정
				cookie.setMaxAge(60*10);
				
				// 쿠키 저장
				response.addCookie(cookie);
				
				
			}
		}else{
			Cookie[] cookies = request.getCookies();
			for(Cookie cookie:cookies){
				if(cookie.getName().equals("save_id")){
					cookie.setMaxAge(0);
					response.addCookie(cookie);
				}
			}
		}
	%>
	
	<a href="./login.jsp">로그인 페이지로 이동</a>
	
	</body>
</html>