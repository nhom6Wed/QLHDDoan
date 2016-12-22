package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Ulti.DbConnection;

/**
 * Servlet implementation class DelDVServlet
 */
@WebServlet("/DelDVServlet")
public class DelDVServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DelDVServlet() {
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
		String MaDV = request.getParameter("MaDV");
		
		try 
		{
			Connection conn = DbConnection.createConnection();
			
			String sql = "DELETE FROM DoanVien " +
					" WHERE MaDV = '" + MaDV + "' ";
			
			PreparedStatement ptmt = (PreparedStatement) conn.prepareStatement(sql);
			
			ptmt.executeUpdate();
			
			RequestDispatcher rd = (RequestDispatcher) request.getRequestDispatcher("danhsachdoanvien");
			rd.forward(request,response);
								
		} 
		catch (SQLException e) 
		{			
			e.printStackTrace();
		}
	}

}
