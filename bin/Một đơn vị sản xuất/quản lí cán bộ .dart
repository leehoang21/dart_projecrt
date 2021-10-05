import 'cán bộ.dart';

class QLCB {
  List ListCanBo = <CanBo>[];

  //them
  void addCanBo(CanBo cb) {
    ListCanBo.add(cb);
  }

  //Tìm kiếm theo họ tên.
  void TimKiemTheoTen(String ten) {
    int check = 1;
    ListCanBo.forEach((i) {
      for (int j = 0; j < ten.length; j++) {
        if (i.getHoTen[j].compareTo(ten[j]) != 0) {
          check = 0;
          break;
        }
      }
      if (check == 1) {
        print(i.toString());
      }
    });
  }

  //Hiện thị thông tin về danh sách các cán bộ.
  void display() {
    ListCanBo.forEach((i) {
      print(i);
      print('');
    });
  }

  int compare(CanBo a, CanBo b) => a.getHoTen.compareTo(b.getHoTen);

  void sortTheoTen() {
    for (int i = 0; i < ListCanBo.length - 1; i++) {
      for (int j = i + 1; j < ListCanBo.length; j++) {
        if (compare(ListCanBo[i], ListCanBo[j]) == 1) {
          var tmp = ListCanBo[i].getHoTen;
          ListCanBo[i].setHoTen(ListCanBo[j].getHoTen);
          ListCanBo[j].setHoTen(tmp);
        }
      }
    }
  }
}
