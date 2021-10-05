import 'NamePhone.dart';
import 'PhoneBook.dart';
import 'phone.dart';

main(List<String> args) {
  PhoneBook p = PhoneBook();
  p.insertPhone('hoang', '0966976259');
  p.insertPhone('hoa', '0966976259');
  //p.removePhone('hoang');
  //p.searchPhone('hoa');
  p.updatePhone('hoa', '0966976258');
  p.sort();
  p.display();
}
