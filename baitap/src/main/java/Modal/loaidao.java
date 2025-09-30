package Modal;

import java.util.ArrayList;

public class loaidao {
	public ArrayList<loai> getloai() throws Exception{
		ArrayList<loai> ds = new ArrayList<loai>();
		ds.add(new loai("TieuThuyet","TieuThuyet"));
		ds.add(new loai("TuTruyen","TuTruyen "));
		ds.add(new loai("KinhDi","KinhDi"));
		ds.add(new loai("NhatKY","NhatKy"));
		ds.add(new loai("TanVan","TanVan"));
		return ds;
	}
}
