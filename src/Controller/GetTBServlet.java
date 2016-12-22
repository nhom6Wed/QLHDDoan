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

import Entities.ThongBao;
import Ulti.DbConnection;

/**
 * Servlet implementation class GetTBServlet
 */
//@WebServlet("/GetTBServlet")
public class GetTBServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetTBServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection conn = DbConnection.createConnection();
		Statement st = null;
		ResultSet rs;
		List<ThongBao> lstTB = new ArrayList<ThongBao>();
		try {
			st = (Statement) conn.createStatement();
			rs = st.executeQuery("select * from ThongBao");

			ThongBao tb = null;

			while (rs.next()) {
				tb = new ThongBao();
				tb.setMaTB(rs.getInt("MaTB"));
				tb.setTenTB(rs.getString("TenTB"));
				tb.setNgayTB(rs.getDate("NgayTB"));
				tb.setTrichDoan(rs.getString("TrichDoan"));
				tb.setNoiDung(rs.getString("NoiDung"));			
				lstTB.add(tb);
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

		request.setAttribute("lstTB", lstTB);
		RequestDispatcher dispatcher = request.getRequestDispatcher("DoanKhoa_QLThongBao.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
