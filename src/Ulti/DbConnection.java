package Ulti;

import java.sql.*;

public final class DbConnection {

	private DbConnection() {
		// Utility classes should always be final and have a private constructor
	}

	public static Connection createConnection() {
		Connection conn = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/quanlydoan","root", "Qu@n0310");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
							
		return conn;
	}
	
	public static void closeConnection(Connection con) {
		if(con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
		    
	public static void closeStatement(PreparedStatement ps) {
		if(ps != null) {
			try {
				ps.close();
			} catch (SQLException e) {
				// TODO Auto-generated a catch block
				e.printStackTrace();
			}
		}
	}	
}