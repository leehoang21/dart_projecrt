import 'ho_gia_dinh.dart';
import 'khu_pho.dart';
import 'nguoi.dart';

void main(List<String> args) {
  var ho = HoGiaDinh(02);
  var n = Nguoi('hoang', 19, 'sinh vien', '113');
  var a = Nguoi('hoa', 20, 'sinh vien', '114');
  var b = Nguoi('hoan', 32, 'sinh vien', '115');
  var kp = KhuPho();

  ho.addTTcaNhan(n);
  ho.addTTcaNhan(a);
  ho.addTTcaNhan(b);
  //ho.addTTcaNhan(n);
  ho.sortTheoTen();
  kp.addKhuPho(ho);
  kp.addKhuPho(ho);
  kp.display();
}
