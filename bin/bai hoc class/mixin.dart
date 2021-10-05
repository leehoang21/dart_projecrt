mixin MauSo {
  double _mauSo = 2;

  double get getMauSo => _mauSo;

  void setMauSo(double mauSo) => _mauSo = mauSo;
}

class PhanSo with MauSo {
  double _tuSo = 1;

  double get getTuSo => _tuSo;

  void setTuSo(double tuSo) => _tuSo = tuSo;
}

class m {
  void main(List<String> args) {
    PhanSo p = PhanSo();
    p.setMauSo(3);
    p.setTuSo(2);
  }
}
