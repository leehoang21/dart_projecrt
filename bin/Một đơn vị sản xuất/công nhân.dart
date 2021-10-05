import 'dart:io';

import 'cán bộ.dart';

class CongNhan extends CanBo {
  late int _bac;

  CongNhan(String hoTen, int tuoi, String gioiTinh, String diaChi, int bac)
      : super(hoTen, tuoi, gioiTinh, diaChi) {
    //kiem tra
    while (true) {
      if (KiemTra(bac)) {
        _bac = bac;
        break;
      } else {
        print('ban nhap sai bac');
        print('moi ban nhap lai bac');
        bac = int.parse(stdin.readLineSync()!);
      }
    }
  }

  int get getBac => _bac;
  //xet xem dung chua
  bool KiemTra(int bac) {
    if (0 < bac && bac < 11) {
      return true;
    } else {
      return false;
    }
  }

  void setBac(int bacMoi) {
    //kiem tra
    while (true) {
      if (KiemTra(bacMoi)) {
        _bac = bacMoi;
        break;
      } else {
        print('ban nhap sai bac');
        print('moi ban nhap lai bac');
        bacMoi = int.parse(stdin.readLineSync()!);
      }
    }
  }

  @override
  String toString() {
    return '''
          họ tên    : $getHoTen
          tuổi      : $getTuoi
          giới tính : $getGioiTinh
          địa chỉ   : $getdiaChi
          bậc       : $getBac''';
  }
}
