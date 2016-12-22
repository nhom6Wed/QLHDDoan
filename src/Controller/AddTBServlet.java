package Controller;

import java.io.IOException;
import java.sql.Connection;
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
 * Servlet implementation class AddTBServlet
 */
@WebServlet("/AddTBServlet")
public class AddTBServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddTBServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String TenTB = request.getParameter("TenTB");
		String NgayTB = request.getParameter("NgayTB");
		String TrichDoan = request.getParameter("TrichDoan");
		String NoiDung = request.getParameter("NoiDung");

		try {
			Connection cnn = DbConnection.createConnection();

			String sql = "INSERT INTO ThongBao(TenTB, NgayTB, TrichDoan, NoiDung) values('" + TenTB + "', curdate(), '" + TrichDoan +"', '" + NoiDung +"')";

			Statement st = (Statement) cnn.createStatement();
			int i = st.executeUpdate(sql);

			if (i > 0) {
				 response.sendRedirect("danhsachthongbao");
			} else {		
				RequestDispatcher rd = (RequestDispatcher) request.getRequestDispatcher("danhsachthongbao");
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
