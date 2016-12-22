package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Ulti.DbConnection;

/**
 * Servlet implementation class AddDVServlet
 */
@WebServlet("/AddDVServlet")
public class AddDVServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddDVServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String HoTen = request.getParameter("HoTen");
		String NgaySinh = request.getParameter("NgaySinh");
		String GioiTinh = request.getParameter("GioiTinh");
		String CMND = request.getParameter("CMND");
		String DiaChi = request.getParameter("DiaChi");
		String MSSV = request.getParameter("MSSV");
		String Lop = request.getParameter("Lop");
		String Khoa = request.getParameter("Khoa");
		String SDT = request.getParameter("SDT");
		String Mail = request.getParameter("Mail");
		String NgayVaoDoan = request.getParameter("NgayVaoDoan");

		try {
			Connection cnn = DbConnection.createConnection();

			String sql = "INSERT INTO DoanVien(HoTen, NgaySinh, GioiTinh, CMND, DiaChi, MSSV, Lop, Khoa, SDT, Mail, NgayVaoDoan)"
					+ "values('" + HoTen + "', '" + NgaySinh +"', '" +GioiTinh +"', '" +CMND +"', '" + DiaChi +"', '" +MSSV+"', '" +Lop+"', '" +Khoa+"', '" +SDT+"', '" +Mail+"', '" +NgayVaoDoan+"')";

			Statement st = (Statement) cnn.createStatement();
			int i = st.executeUpdate(sql);

			if (i > 0) {
				 response.sendRedirect("danhsachdoanvien");
			} else {		
				RequestDispatcher rd = (RequestDispatcher) request.getRequestDispatcher("danhsachdoanvien");
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
