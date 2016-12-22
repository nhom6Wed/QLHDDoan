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
 * Servlet implementation class AddTNServlet
 */
@WebServlet("/AddTNServlet")
public class AddTNServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddTNServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String MaTN = request.getParameter("MaTN");
		String TieuDe = request.getParameter("TieuDe");
		String MSSV = request.getParameter("MSSV");
		String NoiDung = request.getParameter("NoiDung");
		String NgayGui = request.getParameter("NgayGui");
		

		try {
			Connection cnn = DbConnection.createConnection();

			String sql = "INSERT INTO TinNhan(TieuDe, MSSV, NoiDung, NgayGui) values('" + TieuDe + "', '" + MSSV +"', '" + NoiDung +"', curdate())";

			Statement st = (Statement) cnn.createStatement();
			int i = st.executeUpdate(sql);

			if (i > 0) {
				 response.sendRedirect("doankhoadanhsachhoatdong");
			} else {		
				RequestDispatcher rd = (RequestDispatcher) request.getRequestDispatcher("doankhoadanhsachhoatdong");
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
