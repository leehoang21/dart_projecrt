import 'tai_lieu.dart';

class TapChi extends TaiLieu {
  int _soPhatHanh;
  int _thangPhatHanh;

  TapChi(String maTaiLieu, String tenNhaXB, int SoBan, this._soPhatHanh,
      this._thangPhatHanh)
      : super(maTaiLieu, tenNhaXB, SoBan);

  int get getSoPhatHanh => _soPhatHanh;

  void setSoPhatHanh(int soPhatHanh) => _soPhatHanh = soPhatHanh;

  int get getThangPhatHanh => _thangPhatHanh;

  void setThangPhatHanh(thangPhatHanh) => _thangPhatHanh = thangPhatHanh;

  @override
  String toString() {
    return ''' 
    ma tai lieu       : $getMaTaiLieu
    so ban            : $getSoBan
    ten nha xuat ban  : $getTenNhaXB
    so phat hanh      : $_soPhatHanh
    thang phat hanh   : $_thangPhatHanh''';
  }
}
