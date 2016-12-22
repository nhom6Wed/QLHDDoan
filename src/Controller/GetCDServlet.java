package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entities.ChiDoan;
import Ulti.DbConnection;

/**
 * Servlet implementation class getchidoan
 */
//@WebServlet(urlPatterns = {"danhsachchidoan"})
public class GetCDServlet extends HttpServlet {
	private static final long serialVersionUID = 102831973239L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GetCDServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection conn = DbConnection.createConnection();
		Statement st = null;
		ResultSet rs;
		List<ChiDoan> lstCD = new ArrayList<ChiDoan>();
		try {
			st = (Statement) conn.createStatement();
			rs = st.executeQuery("select * from ChiDoan");

			ChiDoan cd = null;

			while (rs.next()) {
				cd = new ChiDoan();
				cd.setMaCBCD(rs.getString("MaCBCD"));
				cd.setTenCD(rs.getString("TenCD"));
				cd.setTenCanBoCD(rs.getString("TenCanBoCD"));
				cd.setMail(rs.getString("Mail"));
				cd.setSDT(rs.getString("SDT"));			
				lstCD.add(cd);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (st != null) {
				try {
					conn.close();
				} catch (SQLException e) {

					e.printStackTrace();
				}
			}
		}

		request.setAttribute("lstCD", lstCD);
		RequestDispatcher dispatcher = request.getRequestDispatcher("DoanTruong_QLChiDoan.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
