package Entities;

import java.sql.Date;

public class ThongBao {
	private int MaTB;
	private String TenTB;
	private Date NgayTB;
	private String TrichDoan;
	private String NoiDung;
	
	public int getMaTB() {
		return MaTB;
	}
	public void setMaTB(int maTB) {
		MaTB = maTB;
	}
	public String getTenTB() {
		return TenTB;
	}
	public void setTenTB(String tenTB) {
		TenTB = tenTB;
	}
	public Date getNgayTB() {
		return NgayTB;
	}
	public void setNgayTB(Date ngayTB) {
		NgayTB = ngayTB;
	}
	public String getTrichDoan() {
		return TrichDoan;
	}
	public void setTrichDoan(String trichDoan) {
		TrichDoan = trichDoan;
	}
	public String getNoiDung() {
		return NoiDung;
	}
	public void setNoiDung(String noiDung) {
		NoiDung = noiDung;
	}
}
