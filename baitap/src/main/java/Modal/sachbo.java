package Modal;

import java.util.ArrayList;

public class sachbo {
	sachdao sdao = new sachdao();
	ArrayList<sach> ds;

	public ArrayList<sach> getsach() throws Exception {
		ds = sdao.getsach();
		return ds;
	}

	public ArrayList<sach> Timtheoloai(String maloai) throws Exception {
		ArrayList<sach> mangTheoLoai = new ArrayList<sach>();
		for (sach i : sdao.getsach()) {
			if (i.getMaloai().trim().toLowerCase().equals(maloai.trim().toLowerCase())) {
				mangTheoLoai.add(i);
			}
		}
		return mangTheoLoai;
	}

	public ArrayList<sach> timTheoKey(String key) throws Exception {
		ArrayList<sach> mangTheokey = new ArrayList<sach>();
		for (sach i : sdao.getsach()) {
			if (i.getMaloai().trim().toLowerCase().equals(key.trim().toLowerCase())) {
				mangTheokey.add(i);
			}
		}
		return mangTheokey;
	}
}
