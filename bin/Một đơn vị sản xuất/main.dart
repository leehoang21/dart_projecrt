import 'cán bộ.dart';
import 'công nhân.dart';
import 'kỹ sư.dart';
import 'nhân viên .dart';
import 'quản lí cán bộ .dart';

void main(List<String> args) {
  var cb = CanBo('hong', 19, 'nu', 'fff');
  var a = CanBo('hoa', 19, 'nu', 'fff');
  var b = CanBo('hoang', 19, 'nu', 'fff');
  var c = CanBo('hoan', 19, 'nu', 'fff');
  var ql = QLCB();
  ql.addCanBo(cb);
  ql.addCanBo(a);
  ql.addCanBo(b);
  ql.addCanBo(c);
  //ql.TimKiemTheoTen('hoang');
  ql.sortTheoTen();
  ql.display();
}
