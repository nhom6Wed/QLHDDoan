package Entities;

import java.sql.Date;

public class TinNhan {
	private int MaTN;
	private String MSSV;
	private String TieuDe;
	private String NoiDung;
	private Date NgayGui;
	
	public int getMaTN() {
		return MaTN;
	}
	public void setMaTN(int maTN) {
		MaTN = maTN;
	}
	public String getMSSV() {
		return MSSV;
	}
	public void setMSSV(String mSSV) {
		MSSV = mSSV;
	}
	public String getTieuDe() {
		return TieuDe;
	}
	public void setTieuDe(String tieuDe) {
		TieuDe = tieuDe;
	}
	public String getNoiDung() {
		return NoiDung;
	}
	public void setNoiDung(String noiDung) {
		NoiDung = noiDung;
	}
	public Date getNgayGui() {
		return NgayGui;
	}
	public void setNgayGui(Date ngayGui) {
		NgayGui = ngayGui;
	}
}


