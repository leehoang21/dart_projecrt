import 'tai_lieu.dart';

class Sach extends TaiLieu {
  String _tacGia;
  int _soTrang;

  Sach(
    String maTaiLieu,
    String tenNhaXB,
    int SoBan,
    this._tacGia,
    this._soTrang,
  ) : super(maTaiLieu, tenNhaXB, SoBan);

  String get getTacGia => _tacGia;

  void setTacGia(String tacGia) => _tacGia = tacGia;

  int get getSoTrang => _soTrang;

  void setSoTrang(int soTrang) => _soTrang = soTrang;

  @override
  String toString() {
    return ''' 
    ma tai lieu       : $getMaTaiLieu
    so ban            : $getSoBan
    ten nha xuat ban  : $getTenNhaXB
    so trang          : $_soTrang
    tac gia           : $_tacGia''';
  }
}
