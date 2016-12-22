package Entities;

import java.sql.Date;

public class DoanVien {
	private int MaDV;
	private String HoTen;
	private Date NgaySinh;
	private boolean GioiTinh;
	private String CMND;
	private String DiaChi;
	private String MSSV;
	private String Lop;
	private String Khoa;
	private String SDT;
	private String Mail;
	private Date NgayVaoDoan;
	
	public int getMaDV() {
		return MaDV;
	}
	public void setMaDV(int maDV) {
		MaDV = maDV;
	}
	public String getHoTen() {
		return HoTen;
	}
	public void setHoTen(String hoTen) {
		HoTen = hoTen;
	}
	public Date getNgaySinh() {
		return NgaySinh;
	}
	public void setNgaySinh(Date ngaySinh) {
		NgaySinh = ngaySinh;
	}
	public boolean isGioiTinh() {
		return GioiTinh;
	}
	public void setGioiTinh(boolean gioiTinh) {
		GioiTinh = gioiTinh;
	}
	public String getCMND() {
		return CMND;
	}
	public void setCMND(String cMND) {
		CMND = cMND;
	}
	public String getDiaChi() {
		return DiaChi;
	}
	public void setDiaChi(String diaChi) {
		DiaChi = diaChi;
	}
	public String getMSSV() {
		return MSSV;
	}
	public void setMSSV(String mSSV) {
		MSSV = mSSV;
	}
	public String getLop() {
		return Lop;
	}
	public void setLop(String lop) {
		Lop = lop;
	}
	public String getKhoa() {
		return Khoa;
	}
	public void setKhoa(String khoa) {
		Khoa = khoa;
	}
	public String getSDT() {
		return SDT;
	}
	public void setSDT(String sDT) {
		SDT = sDT;
	}
	public String getMail() {
		return Mail;
	}
	public void setMail(String mail) {
		Mail = mail;
	}
	public Date getNgayVaoDoan() {
		return NgayVaoDoan;
	}
	public void setNgayVaoDoan(Date ngayVaoDoan) {
		NgayVaoDoan = ngayVaoDoan;
	}
	
}
