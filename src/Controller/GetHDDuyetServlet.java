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

import Entities.HoatDong;
import Ulti.DbConnection;

/**
 * Servlet implementation class GetHDDuyetServlet
 */
//@WebServlet("/GetHDDuyetServlet")
public class GetHDDuyetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetHDDuyetServlet() {
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
		List<HoatDong> lstHD = new ArrayList<HoatDong>();
		try {
			st = (Statement) conn.createStatement();
			rs = st.executeQuery("select * from HoatDong where TrangThai = true");

			HoatDong hd = null;

			while (rs.next()) {
				hd = new HoatDong();
				hd.setMaHD(rs.getInt("MaHD"));
				hd.setTenHD(rs.getString("TenHD"));
				hd.setDiaDiem(rs.getString("DiaDiem"));
				hd.setDVToChuc(rs.getString("DVToChuc"));
				hd.setNgayDienRa(rs.getDate("NgayDienRa"));
				hd.setDRL(rs.getInt("DRL"));
				hd.setDCTXH(rs.getInt("DCTXH"));
				hd.setNoiDung(rs.getString("NoiDung"));
				hd.setTrangThai(rs.getBoolean("TrangThai"));
				lstHD.add(hd);
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

		request.setAttribute("lstHD", lstHD);
		RequestDispatcher dispatcher = request.getRequestDispatcher("DoanVien_DangKyHD.jsp");
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
