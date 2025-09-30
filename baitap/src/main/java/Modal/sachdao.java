package Modal;

import java.util.ArrayList;

public class sachdao {
	public ArrayList<sach> getsach() throws Exception{
		ArrayList<sach> ds = new ArrayList<sach>();
		ds.add(new sach("1A", "VanLongTap1",10,200,"TieuThuyet", "Tap1","b1.jpg","DangVanLong"));
		ds.add(new sach("1B", "VanLongTap2",10,200,"TieuThuyet", "Tap2","b2.jpg","DangVanLong"));
		ds.add(new sach("1C", "VanLongTap3",10,200,"TieuThuyet", "Tap3","b3.jpg","DangVanLong"));
		ds.add(new sach("2A", "HoangLanTap1",10,500,"NhatKY", "Tap1","b4.jpg","DoTrongHoangLan"));
		ds.add(new sach("2B", "HoangLanTap2",10,500,"NhatKY", "Tap2","b5.jpg","DoTrongHoangLan"));
		ds.add(new sach("2C", "HoangLanTap3",10,500,"NhatKY", "Tap3","b6.jpg","DoTrongHoangLan"));
		ds.add(new sach("2D", "HoangLanTap4",10,500,"NhatKY", "Tap4","b7.jpg","DoTrongHoangLan"));
		ds.add(new sach("3A", "ChainsawMan", 100,200,"TanVan", "Tap1", "b8.jpg", "NIGG"));
		return ds;
	}
}
