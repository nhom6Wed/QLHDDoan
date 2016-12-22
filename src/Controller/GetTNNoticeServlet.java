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
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entities.TinNhan;
import Ulti.DbConnection;

/**
 * Servlet implementation class GetTNNoticeServlet
 */
@WebServlet("/GetTNNoticeServlet")
public class GetTNNoticeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetTNNoticeServlet() {
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
		List<TinNhan> lstTN = new ArrayList<TinNhan>();
		try {
			st = (Statement) conn.createStatement();
			rs = st.executeQuery("select * from TinNhan");

			TinNhan tn = null;

			while (rs.next()) {
				tn = new TinNhan();
				tn.setMaTN(rs.getInt("MaTN"));
				tn.setMSSV(rs.getString("MSSV"));
				tn.setTieuDe(rs.getString("TieuDe"));
				tn.setNoiDung(rs.getString("NoiDung"));
				tn.setNgayGui(rs.getDate("NgayGui"));			
				lstTN.add(tn);
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

		request.setAttribute("lstTN", lstTN);
		RequestDispatcher dispatcher = request.getRequestDispatcher("dangkyhoatdong");
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
