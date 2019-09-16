<%@page import="kr.co.itcen.guestbook.dao.guestbookDao"%>
<%@page import="kr.co.itcen.guestbook.vo.guestbookVo"%>

<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String contents = request.getParameter("message");
	
	
	guestbookVo vo = new guestbookVo();
	
	vo.setName(name);
	vo.setPassword(password);
	vo.setContents(contents);
	
	
	new guestbookDao().insert(vo);
	
	//이 경로는 index.jsp로 이동한다.
	//Redirect를 통해서 웹 브라우저에서 표현되는것!!!
	response.sendRedirect(request.getContextPath());
%>