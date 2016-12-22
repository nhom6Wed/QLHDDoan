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

import Entities.DoanVien;
import Ulti.DbConnection;

/**
 * Servlet implementation class GetDVServlet
 */
//@WebServlet("/GetDVServlet")
public class GetDVServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetDVServlet() {
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
		List<DoanVien> lstDV = new ArrayList<DoanVien>();
		try {
			st = (Statement) conn.createStatement();
			rs = st.executeQuery("select * from DoanVien");

			DoanVien dv = null;

			while (rs.next()) {
				dv = new DoanVien();
				dv.setMaDV(rs.getInt("MaDV"));
				dv.setHoTen(rs.getString("HoTen"));
				dv.setNgaySinh(rs.getDate("NgaySinh"));
				dv.setCMND(rs.getString("CMND"));
				dv.setGioiTinh(rs.getBoolean("GioiTinh"));
				dv.setDiaChi(rs.getString("DiaChi"));
				dv.setMSSV(rs.getString("MSSV"));
				dv.setLop(rs.getString("Lop"));		
				dv.setKhoa(rs.getString("Khoa"));	
				dv.setSDT(rs.getString("SDT"));	
				dv.setMail(rs.getString("Mail"));	
				dv.setNgayVaoDoan(rs.getDate("NgayVaoDoan"));	
				lstDV.add(dv);
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

		request.setAttribute("lstDV", lstDV);
		RequestDispatcher dispatcher = request.getRequestDispatcher("Admin_QLDoanVien.jsp");
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
