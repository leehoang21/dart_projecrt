import 'dart:io';

import 'package:test/expect.dart';

import '../Một đơn vị sản xuất/cán bộ.dart';
import '../Một đơn vị sản xuất/công nhân.dart';
import '../Một đơn vị sản xuất/kỹ sư.dart';
import '../Một đơn vị sản xuất/nhân viên .dart';
import '../Một đơn vị sản xuất/quản lí cán bộ .dart';

void menu() {
  print('''
  1.Thêm mới cán bộ.
  2.Tìm kiếm theo họ tên.
  3.Hiện thị thông tin về danh sách các cán bộ.
  4.Thoát khỏi chương trình.''');
}

CanBo? nhap() {
  print('''
            moi ban nhap lan luot 
          ho ten , tuoi , gioi tinh , dia chi''');
  String hoTen = stdin.readLineSync()!;
  int? tuoi = int.parse(stdin.readLineSync()!);
  String gioiTinh = stdin.readLineSync()!;
  String diaChi = stdin.readLineSync()!;
  print('''
            can bo thuoc cap nao?
            1.cong nhan
            2.ky su
            3.nhan vien''');
  int? chon = int.parse(stdin.readLineSync()!);
  switch (chon) {
    case 1:
      print('moi ban nhap bac cua cong nhan (tu 1 -> 9)');
      int? bac = int.parse(stdin.readLineSync()!);
      CanBo cn = CongNhan(hoTen, tuoi, gioiTinh, diaChi, bac);
      return cn;
    case 2:
      print('moi ban nhap nganh cua ky su');
      String nganh = stdin.readLineSync()!;
      CanBo ks = KySu(hoTen, tuoi, gioiTinh, diaChi, nganh);
      return ks;
    case 3:
      print('moi ban nhap cong viec cua nhan vien');
      String congViec = stdin.readLineSync()!;
      CanBo nv = NhanVien(hoTen, tuoi, gioiTinh, diaChi, congViec);
      return nv;
    default:
      print("ko co gi");
      break;
  }
  return null;
}

int main(List<String> args) {
  CanBo ct = NhanVien('hoang', 19, 'nam', 'aaa', 'van phong');
  int chon;
  dynamic cb;
  String ten;
  QLCB ql = QLCB();
  ql.addCanBo(ct);
  while (true) {
    menu();
    chon = int.parse(stdin.readLineSync()!);
    switch (chon) {
      case 1:
        cb = nhap();
        if (cb != null) {
          ql.addCanBo(cb);
        }
        break;
      case 2:
        print('moi ban nhap ten muon tim kiem');
        ten = stdin.readLineSync()!;
        ql.TimKiemTheoTen(ten);
        break;
      case 3:
        ql.display();
        break;
      case 4:
        return 0;
    }
  }
}
