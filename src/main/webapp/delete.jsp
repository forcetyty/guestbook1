<%@page import="kr.co.itcen.guestbook.dao.guestbookDao"%>
<%@page import="kr.co.itcen.guestbook.vo.guestbookVo"%>

<%
	request.setCharacterEncoding("utf-8");

	String no = request.getParameter("no");
	
	int num = Integer.parseInt(no);
	
	//guestbookVo vo = new guestbookVo();
	
//	vo.setName(name);
//	vo.setPassword(password);
//	vo.setContents(contents);
	
	
	new guestbookDao().delete(num);
	
	//이 경로는 index.jsp로 이동한다.
	response.sendRedirect(request.getContextPath());
%>