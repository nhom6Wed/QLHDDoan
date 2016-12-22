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
 * Servlet implementation class DelTBServlet
 */
@WebServlet("/DelTBServlet")
public class DelTBServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DelTBServlet() {
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
		String MaTB = request.getParameter("MaTB");
		
		try 
		{
			Connection conn = DbConnection.createConnection();
			
			String sql = "DELETE FROM ThongBao " +
					" WHERE MaTB = '" + MaTB + "' ";
			
			PreparedStatement ptmt = (PreparedStatement) conn.prepareStatement(sql);
			
			ptmt.executeUpdate();
			
			RequestDispatcher rd = (RequestDispatcher) request.getRequestDispatcher("danhsachthongbao");
			rd.forward(request,response);
								
		} 
		catch (SQLException e) 
		{			
			e.printStackTrace();
		}
	}

}