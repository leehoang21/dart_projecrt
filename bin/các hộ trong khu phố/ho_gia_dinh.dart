import 'nguoi.dart';

class HoGiaDinh {
  int _soNha;
  late int _soThanhVien;
  List TTCaNhan = <Nguoi>[];

  HoGiaDinh(this._soNha);

  int get getSoNha => _soNha;

  void setSoNha(int soNha) => _soNha = soNha;

  int get getSoThanhVien => _soThanhVien;

  //check chung minh nhan dan
  bool check(String so) {
    for (int i = 0; i < TTCaNhan.length; i++) {
      if (TTCaNhan[i].getSoCM.compareTo(so) == 0) {
        return true;
      }
    }
    return false;
  }

  void addTTcaNhan(Nguoi n) {
    if (check(n.getSoCM)) {
      print('so chung minh da ton tai');
      print('them thanh vien ko thanh cong');
    } else {
      TTCaNhan.add(n);
      _soThanhVien = TTCaNhan.length;
    }
  }

  //hien thi
  void display() {
    print('|${'ho ten'.padRight(20)}|${'tuoi'.padRight(4)}'
        '|${'nghe'.padRight(20)}|${'so chung minh'.padRight(13)}|');
    TTCaNhan.forEach((i) {
      print(i.toString());
    });
  }

  //sort
  void sortTheoTen() {
    for (int i = 0; i < TTCaNhan.length - 1; i++) {
      for (int j = i + 1; j < TTCaNhan.length; j++) {
        if (TTCaNhan[i].getHoTen.compareTo(TTCaNhan[j].getHoTen) == 1) {
          var tmp = TTCaNhan[i].getHoTen;
          TTCaNhan[i].setHoTen(TTCaNhan[j].getHoTen);
          TTCaNhan[j].setHoTen(tmp);
        }
      }
    }
  }
}
