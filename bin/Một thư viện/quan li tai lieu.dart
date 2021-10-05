import 'tai_lieu.dart';

class QLTaiLieu {
  List ql = <TaiLieu>[];

  //check xem ma tai lieu da ton tai chua
  bool check(String maTaiLieu) {
    for (int i = 0; i < ql.length; i++) {
      if (ql[i].getMaTaiLieu.compareTo(maTaiLieu) == 0) {
        return true;
      }
    }
    return false;
  }

  //tiem kiem ma tai lieu
  TaiLieu? searchMaTaiLieu(String maTaiLieu) {
    for (int i = 0; i < ql.length; i++) {
      if (ql[i].getMaTaiLieu.compareTo(maTaiLieu) == 0) {
        return ql[i];
      }
    }
    return null;
  }

  void addTaiLieu(TaiLieu tl) {
    if (!check(tl.getMaTaiLieu)) {
      ql.add(tl);
    } else {
      print('ma tai lieu ${tl.getMaTaiLieu} da co');
      print('them moi ko thanh cong');
    }
  }

  void removeTaiLieu(String maTaiLieu) {
    if (searchMaTaiLieu(maTaiLieu) != null) {
      ql.remove(searchMaTaiLieu(maTaiLieu));
    } else {
      print('ko co ma tai lieu nay');
    }
  }

  void disPlay() {
    ql.forEach((i) {
      print(i.toString());
      print('');
    });
  }
}
