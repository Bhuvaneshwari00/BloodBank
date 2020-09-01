package Project;

import java.sql.Connection;
//import java.sql.DriverManager;
import java.sql.DriverManager;
public class ConnectionProvider {
	
	
	public static Connection getCon()
	{
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank", "student" , "student");
			return conn;
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;
			
		}
		
	}

	

}
