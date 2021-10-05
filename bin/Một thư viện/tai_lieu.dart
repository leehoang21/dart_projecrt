class TaiLieu {
  String _maTaiLieu;
  String _tenNhaXB;
  int _SoBan;

  TaiLieu(this._maTaiLieu, this._tenNhaXB, this._SoBan);

  String get getMaTaiLieu => _maTaiLieu;

  void setMaTaiLieu(String maTaiLieu) => _maTaiLieu = maTaiLieu;

  String get getTenNhaXB => _tenNhaXB;

  void setTenNhaXB(String teNhaXB) => _tenNhaXB = teNhaXB;

  int get getSoBan => _SoBan;

  void setSoBan(int soBan) => _SoBan = soBan;

  @override
  String toString() {
    return ''' 
    ma tai lieu       : $_maTaiLieu
    so ban            : $_SoBan
    ten nha xuat ban  : $_tenNhaXB''';
  }
}
