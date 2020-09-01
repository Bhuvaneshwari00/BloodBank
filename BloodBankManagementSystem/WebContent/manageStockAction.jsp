<%@page import="Project.ConnectionProvider,java.sql.*" %>

<%
 String bloodgroup=request.getParameter("bloodgroup");
String incdec=request.getParameter("incdec");
int units=Integer.parseInt(request.getParameter("units"));
try{
	
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	if(incdec.equals("inc"))
	{
		st.executeUpdate("update stock set units=units+'"+units+"' where bloodgroup='"+bloodgroup+"'");
	}
	else{
		st.executeUpdate("update stock set units=units-'"+units+"' where bloodgroup='"+bloodgroup+"'");
		
	}
	response.sendRedirect("manageStock.jsp?msg=valid");
	
}catch(Exception e){
	e.printStackTrace();
	response.sendRedirect("manageStock.jsp?msg=invalid");
}

 
 %>
 