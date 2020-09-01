<%@page import="Project.ConnectionProvider,java.sql.*" %>
<%
String id=request.getParameter("id");
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("delete from donor where id='"+id+"'");
	response.sendRedirect("editDeleteList.jsp?msg=deleted");
	
	
}
catch(Exception e)
{
	e.printStackTrace();
	
}
%>