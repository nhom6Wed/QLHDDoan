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
 * Servlet implementation class UpdateCDServlet
 */
@WebServlet("/UpdateCDServlet")
public class UpdateCDServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateCDServlet() {
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
		String MaCBCD = request.getParameter("MaCBCD");
		String TenCD = request.getParameter("TenCD");
		String TenCanBoCD = request.getParameter("TenCanBoCD");
		String SDT = request.getParameter("SDT");
		String Mail = request.getParameter("Mail");
		
		try 
		{
			Connection conn = DbConnection.createConnection();
			
			String sql = "UPDATE ChiDoan "
					+ "SET TenCD = '" + TenCD + "', TenCanBoCD = '" + TenCanBoCD + "', SDT = '" + SDT + "', Mail = '" + Mail + "' "
					+ "Where MaCBCD = '" + MaCBCD + "' ";
			
			PreparedStatement ptmt = (PreparedStatement) conn.prepareStatement(sql);
			
			ptmt.executeUpdate();
			
			RequestDispatcher rd = (RequestDispatcher) request.getRequestDispatcher("danhsachchidoan");
			rd.forward(request,response);
								
		} 
		catch (SQLException e) 
		{			
			e.printStackTrace();
		}
	}

}
