import 'cán bộ.dart';

class NhanVien extends CanBo {
  String _congViec;

  NhanVien(
      String hoTen, int tuoi, String gioiTinh, String diaChi, this._congViec)
      : super(hoTen, tuoi, gioiTinh, diaChi);

  String get getCongViec => _congViec;

  void setCongViec(String congViec) => _congViec = congViec;

  @override
  String toString() {
    return '''
          họ tên        : $getHoTen
          tuổi          : $getTuoi
          giới tính     : $getGioiTinh
          địa chỉ       : $getdiaChi
          cong viec     : $getCongViec''';
  }
}
