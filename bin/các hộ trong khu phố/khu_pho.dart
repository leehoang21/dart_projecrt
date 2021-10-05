import 'ho_gia_dinh.dart';

class KhuPho {
  List TTHoGiaDinh = <HoGiaDinh>[];

  //add
  void addKhuPho(HoGiaDinh ho) {
    TTHoGiaDinh.add(ho);
  }

  //hien thi
  void display() {
    int j = 1;
    TTHoGiaDinh.forEach((i) {
      print('ho thu ${j++}');
      print(i.display());
    });
  }
}
