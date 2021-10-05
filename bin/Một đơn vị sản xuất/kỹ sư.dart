import 'cán bộ.dart';

class KySu extends CanBo {
  String _nghanh;

  KySu(String hoTen, int tuoi, String gioiTinh, String diaChi, this._nghanh)
      : super(hoTen, tuoi, gioiTinh, diaChi);

  String get getNghanh => _nghanh;

  void setNghanh(String nghanh) => _nghanh = nghanh;

  @override
  String toString() {
    return '''
          họ tên    : $getHoTen
          tuổi      : $getTuoi
          giới tính : $getGioiTinh
          địa chỉ   : $getdiaChi
          ngành     : $getNghanh''';
  }
}
