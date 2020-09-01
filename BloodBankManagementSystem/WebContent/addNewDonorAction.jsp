<%@page import="Project.ConnectionProvider,java.sql.*"%>

<%

	String id=request.getParameter("id");
	String name=request.getParameter("name");
	String fathername=request.getParameter("fathername");
	String mothername=request.getParameter("mothername");
	String mobilenumber=request.getParameter("mobilenumber");
	String gender=request.getParameter("gender");
	String email=request.getParameter("email");
	String bloodgroup=request.getParameter("bloodgroup");
	String address=request.getParameter("address");
	
	try{
		Connection conn=ConnectionProvider.getCon();
		PreparedStatement ps=conn.prepareStatement
				("insert into donor values(?,?,?,?,?,?,?,?,?)");
		ps.setString(1, id);
		ps.setString(2, name);
		ps.setString(3, fathername);
		ps.setString(4, mothername);
		ps.setString(5, mobilenumber);
		ps.setString(6, gender);
		ps.setString(7, email);
		ps.setString(8, bloodgroup);
		ps.setString(9, address);
		ps.executeUpdate();
		response.sendRedirect("addNewDonor.jsp?msg=valid");
		
		
	}
	catch(Exception e){
		e.printStackTrace();
		response.sendRedirect("addNewDonor.jsp?msg=invalid");
	}
	



%>
