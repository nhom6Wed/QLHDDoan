package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.PreparedStatement;

import Ulti.DbConnection;

/**
 * Servlet implementation class DelHDServlet
 */
@WebServlet("/DelHDServlet")
public class DelHDServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DelHDServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String MaHD = request.getParameter("MaHD");
		
		try 
		{
			Connection conn = DbConnection.createConnection();
			
			String sql = "DELETE FROM HoatDong " +
					" WHERE MaHD = '" + MaHD + "' ";
			
			PreparedStatement ptmt = (PreparedStatement) conn.prepareStatement(sql);
			
			ptmt.executeUpdate();
			
			RequestDispatcher rd = (RequestDispatcher) request.getRequestDispatcher("danhsachhoatdong");
			rd.forward(request,response);
								
		} 
		catch (SQLException e) 
		{			
			e.printStackTrace();
		}
	}

}
