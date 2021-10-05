import 'tai_lieu.dart';

class Bao extends TaiLieu {
  int _ngayPhatHanh;
  Bao(
    String maTaiLieu,
    String tenNhaXB,
    int SoBan,
    this._ngayPhatHanh,
  ) : super(maTaiLieu, tenNhaXB, SoBan);

  int get getNgayPhatHanh => _ngayPhatHanh;

  void setNgayPhatHanh(int ngayPhatHanh) => _ngayPhatHanh = ngayPhatHanh;

  @override
  String toString() {
    return ''' 
    ma tai lieu       : $getMaTaiLieu
    so ban            : $getSoBan
    ten nha xuat ban  : $getTenNhaXB
    ngay phat hanh    : $_ngayPhatHanh''';
  }
}
