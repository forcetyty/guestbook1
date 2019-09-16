<%@page import="kr.co.itcen.guestbook.dao.guestbookDao"%>
<%@page import="kr.co.itcen.guestbook.vo.guestbookVo"%>

<%
	request.setCharacterEncoding("utf-8");

	String no = request.getParameter("no");
	String password = request.getParameter("password");
	
	// 값을 빼내서 검증하는 과정이 필요
	//바인딩!!!!!!!
	
	int num = Integer.parseInt(no);
	
	//  guestbookVo vo = new guestbookVo();
	//	vo.setName(name);
	//	vo.setPassword(password);
	//	vo.setContents(contents);
	
	//비즈니스 부분!!!
	guestbookVo vo = new guestbookVo();
	vo.setNo(Long.parseLong(no));
	vo.setPassword(password);
	
	new guestbookDao().delete(vo);
	
	//이 경로는 index.jsp로 이동한다.
	response.sendRedirect(request.getContextPath());
%>