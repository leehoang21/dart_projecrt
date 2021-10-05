import 'NamePhone.dart';
import 'phone.dart';

class PhoneBook extends Phone {
  List PhoneList = <NamePhone>[];

  @override
  void insertPhone(String Name, String Phone) {
    int check = 0;
    for (int i = 0; i < PhoneList.length; i++) {
      if (PhoneList[i].getName.compareTo(Name) == 0) {
        if (PhoneList[i].getPhone.compareTo(Phone) != 0) {
          Phone += ':${PhoneList[i].getPhone}';
          PhoneList[i].setPhone(Phone);
        }
        check = 1;
      }
    }
    if (check == 0) {
      var p = NamePhone(Name, Phone);
      PhoneList.add(p);
    }
  }

  @override
  void removePhone(String Name) {
    for (int i = 0; i < PhoneList.length; i++) {
      if (PhoneList[i].getName.compareTo(Name) == 0) {
        PhoneList.remove(PhoneList[i]);
      }
    }
  }

  //tim kiem phone
  @override
  void searchPhone(String Name) {
    for (int i = 0; i < PhoneList.length; i++) {
      if (PhoneList[i].getName.compareTo(Name) == 0) {
        print(PhoneList[i]);
      }
    }
  }

  @override
  void updatePhone(String Name, String NewPhone) {
    for (int i = 0; i < PhoneList.length; i++) {
      if (PhoneList[i].getName.compareTo(Name) == 0) {
        PhoneList[i].setPhone(NewPhone);
      }
    }
  }

  int compare(NamePhone a, NamePhone b) => a.getName.compareTo(b.getName);
  @override
  void sort() {
    for (int i = 0; i < PhoneList.length - 1; i++) {
      for (int j = i + 1; j < PhoneList.length; j++) {
        if (compare(PhoneList[i], PhoneList[j]) == 1) {
          var tmp = PhoneList[i].getName;
          PhoneList[i].setName(PhoneList[j].getName);
          PhoneList[j].setName(tmp);
        }
      }
    }
  }

  //hien thi
  void display() {
    print('|${'name'.padRight(20)}|${'phone'.padRight(20)}|');
    PhoneList.forEach((i) {
      print(i);
    });
  }
}
