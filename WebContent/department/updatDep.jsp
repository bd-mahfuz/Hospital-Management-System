<%@page import="java.sql.Statement"%>
<%@page import="dbConnector.DbConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="servlet.AddDepartInfo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="addDep" class="bean.AddDepartment" scope="request">
	<jsp:setProperty name="addDep" property="depName" value='<%=request.getParameter("depname") %>'/>
	<jsp:setProperty name="addDep" property="description" value='<%=request.getParameter("description") %>'/>
</jsp:useBean>
<%

	Connection con=DbConnector.getConnection();
	Statement stmStatement=null;
	try{
		stmStatement=con.createStatement();
		String sql="update department set dep_name='"+addDep.getDepName()+"', description='"+addDep.getDescription()+"' where id='"+request.getParameter("id")+"'";
		int i=stmStatement.executeUpdate(sql);
		if(i>0) {
			request.setAttribute("message", "edit success !!");
			request.getRequestDispatcher("../department/editDepartment.jsp").forward(request, response);
		}else{
			request.setAttribute("message", "edit failed !!");
			request.getRequestDispatcher("../department/editDepartment.jsp").forward(request, response);
		}
	}catch(Exception e) {
		e.printStackTrace();
	}
	finally{
		stmStatement.close();
	}
%>
</body>
</html>