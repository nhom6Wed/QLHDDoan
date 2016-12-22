package Entities;

import java.sql.Date;

public class HoatDong {
	private int MaHD;
	private String TenHD;
	private String DiaDiem;
	private String DVToChuc;
	private Date NgayDienRa;
	private int DCTXH;
	private int DRL;
	private String NoiDung;
	private boolean TrangThai;
	
	
	
	public boolean isTrangThai() {
		return TrangThai;
	}
	public void setTrangThai(boolean trangThai) {
		TrangThai = trangThai;
	}
	public int getMaHD() {
		return MaHD;
	}
	public void setMaHD(int maHD) {
		MaHD = maHD;
	}
	public String getTenHD() {
		return TenHD;
	}
	public void setTenHD(String tenHD) {
		TenHD = tenHD;
	}
	public String getDiaDiem() {
		return DiaDiem;
	}
	public void setDiaDiem(String diaDiem) {
		DiaDiem = diaDiem;
	}
	public String getDVToChuc() {
		return DVToChuc;
	}
	public void setDVToChuc(String dVToChuc) {
		DVToChuc = dVToChuc;
	}
	public Date getNgayDienRa() {
		return NgayDienRa;
	}
	public void setNgayDienRa(Date ngayDienRa) {
		NgayDienRa = ngayDienRa;
	}
	public int getDCTXH() {
		return DCTXH;
	}
	public void setDCTXH(int dCTXH) {
		DCTXH = dCTXH;
	}
	public int getDRL() {
		return DRL;
	}
	public void setDRL(int dRL) {
		DRL = dRL;
	}
	public String getNoiDung() {
		return NoiDung;
	}
	public void setNoiDung(String noiDung) {
		NoiDung = noiDung;
	}
	
}

