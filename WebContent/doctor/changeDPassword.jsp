<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="cPDoctor" class="bean.AddDoctor" scope="request">
	<jsp:setProperty name="cPDoctor" property="password" value='<%=request.getParameter("npass") %>'/>
</jsp:useBean>
<jsp:forward page="../ChangeDPass">
	<jsp:param value='<%=request.getParameter("ppass") %>' name="ppass"/>
	<jsp:param value='<%=session.getAttribute("userMail") %>' name="userMail"/>
	<jsp:param value="<%=cPDoctor.getPassword() %>" name="npass"/>
</jsp:forward>
</body>
</html>