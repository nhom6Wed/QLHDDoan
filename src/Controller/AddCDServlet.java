package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.servlet4preview.RequestDispatcher;

import com.mysql.jdbc.Statement;

import Entities.ChiDoan;
import Ulti.DbConnection;
/**
 * Servlet implementation class AddCDServlet
 */
@WebServlet("/addchidoan")
public class AddCDServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddCDServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String TenCD = request.getParameter("TenCD");
		String TenCanBoCD = request.getParameter("TenCanBoCD");
		String SDT = request.getParameter("SDT");
		String Mail = request.getParameter("Mail");

		try {
			Connection cnn = DbConnection.createConnection();

			String sql = "INSERT INTO ChiDoan(TenCD, TenCanBoCD, Mail, SDT) values('" + TenCD + "', '" + TenCanBoCD +"', '" + Mail +"', '" + SDT +"')";

			Statement st = (Statement) cnn.createStatement();
			int i = st.executeUpdate(sql);

			if (i > 0) {
				 response.sendRedirect("danhsachchidoan");
			} else {		
				RequestDispatcher rd = (RequestDispatcher) request.getRequestDispatcher("danhsachchidoan");
				rd.forward(request, response);
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
			
	}

}
