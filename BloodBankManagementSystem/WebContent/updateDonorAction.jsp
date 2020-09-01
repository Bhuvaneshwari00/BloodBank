<%@page import="Project.ConnectionProvider,java.sql.*" %>
<%

	String id=request.getParameter("id");
	String name=request.getParameter("name");
	String fathername=request.getParameter("fathername");
	String mothername=request.getParameter("mothername");
	String mobilenumber=request.getParameter("mobilenumber");
	
	String email=request.getParameter("email");
	
	String address=request.getParameter("address");
	
	try{
		Connection conn=ConnectionProvider.getCon();
		PreparedStatement ps=conn.prepareStatement
				("update donor set name=?,father=?,mother=?,mobilenumber=?,email=?,address=? where id=?");
		
		ps.setString(1, name);
		ps.setString(2, fathername);
		ps.setString(3, mothername);
		ps.setString(4, mobilenumber);
		
		ps.setString(5, email);
		
		ps.setString(6, address);
		ps.setString(7, id);
		ps.executeUpdate();
		response.sendRedirect("editDeleteList.jsp?msg=valid");
		
		
	}
	catch(Exception e){
		e.printStackTrace();
		response.sendRedirect("editDeleteList.jsp?msg=invalid");
	}
	



%>
