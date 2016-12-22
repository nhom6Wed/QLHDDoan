package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.servlet4preview.RequestDispatcher;

import com.mysql.jdbc.Statement;

import Ulti.DbConnection;

/**
 * Servlet implementation class AddHDServlet
 */
@WebServlet("/AddHDServlet")
public class AddHDServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddHDServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String TenHD = request.getParameter("TenHD");
		String DiaDiem = request.getParameter("DiaDiem");
		String DVToChuc = request.getParameter("DVToChuc");
		String NgayDienRa = request.getParameter("NgayDienRa");
		String DRL = request.getParameter("DRL");
		String DCTXH = request.getParameter("DCTXH");
		String NoiDung = request.getParameter("NoiDung");
		String TrangThai = request.getParameter("TrangThai");
		
		try {
			Connection cnn = DbConnection.createConnection();

			String sql = "INSERT INTO HoatDong(TenHD, DiaDiem, DVToChuc, NgayDienRa, DRL, DCTXH, NoiDung, TrangThai) "
					+ "values('" + TenHD + "', '" + DiaDiem +"', '" + DVToChuc +"', '" + NgayDienRa +"', '" + DRL +"', '" + DCTXH +"', '" + NoiDung +"', true)";

			Statement st = (Statement) cnn.createStatement();
			int i = st.executeUpdate(sql);

			if (i > 0) {
				 response.sendRedirect("danhsachhoatdong");
			} else {		
				RequestDispatcher rd = (RequestDispatcher) request.getRequestDispatcher("danhsachhoatdong");
				rd.forward(request, response);
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
