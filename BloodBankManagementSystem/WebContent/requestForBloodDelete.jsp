<%@page import="Project.ConnectionProvider,java.sql.*" %>

<%
String mobilenumber=request.getParameter("mobilenumber");

try{
	
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("delete from bloodrequest where mobilenumber='"+mobilenumber+"'");
	response.sendRedirect("requestForBlood.jsp");
	
	
	
}
catch(Exception e){
	e.printStackTrace();
	response.sendRedirect("requestForBlood.jsp");
}


%>
