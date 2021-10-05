class Nguoi {
  String _hoTen;
  int _tuoi;
  String _nghe;
  String _soCM;

  Nguoi(
    this._hoTen,
    this._tuoi,
    this._nghe,
    this._soCM,
  );

  String get getHoTen => _hoTen;

  void setHoTen(String hoTen) => _hoTen = hoTen;

  int get getTuoi => _tuoi;

  void setTuoi(int tuoi) => _tuoi = tuoi;

  String get getNghe => _nghe;

  void setNghe(String nghe) => _nghe = nghe;

  String get getSoCM => _soCM;

  void setSoCM(String soCm) => _soCM = soCm;

  @override
  String toString() {
    return '|${_hoTen.padRight(20)}|${_tuoi.toString().padRight(4)}'
        '|${_nghe.padRight(20)}|${_soCM.padRight(13)}|';
  }
}
