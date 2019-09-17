<%@page import="kr.co.itcen.guestbook.vo.GuestbookVo"%>
<%@page import="kr.co.itcen.guestbook.dao.GuestbookDao"%>


<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String contents = request.getParameter("message");
	
	
	GuestbookVo vo = new GuestbookVo();
	
	vo.setName(name);
	vo.setPassword(password);
	vo.setContents(contents);
	
	
	new GuestbookDao().insert(vo);
	
	//이 경로는 index.jsp로 이동한다.
	//Redirect를 통해서 웹 브라우저에서 표현되는것!!!
	response.sendRedirect(request.getContextPath());
%>