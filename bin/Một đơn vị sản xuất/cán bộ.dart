class CanBo {
  String _hoTen;
  int _tuoi;
  String _gioiTinh;
  String _diaChi;
  //contructor
  CanBo(this._hoTen, this._tuoi, this._gioiTinh, this._diaChi);
  //getter and setter
  String get getHoTen => _hoTen;

  void setHoTen(String HoTen) => _hoTen = HoTen;

  int get getTuoi => _tuoi;

  void setTuoi(int tuoi) => _tuoi = tuoi;

  String get getGioiTinh => _gioiTinh;

  void setGioiTinh(String GioiTinh) => _gioiTinh = GioiTinh;

  String get getdiaChi => _diaChi;

  void setDiaChi(String DiaChi) => _diaChi = DiaChi;

  String toString() {
    return '''
          Ho ten    : $_hoTen
          tuoi      : $_tuoi
          gioi tinh : $_gioiTinh
          dia chi   : $_diaChi''';
  }
}
