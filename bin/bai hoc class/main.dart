import 'ke_thua.dart';
import 'static_factory_class.dart';
import 'test class.dart';

void main(List<String> args) {
  var d = dogs('cho', 12, 'den');
  print(d.getTen);
  print(d.getColor);
  print(d.gettuoi);
  print(d.toString());
  print(staticClass.a);
  var b = staticClass(1);
  var c = Beverage('hoang', 1, 'ass', 1, '1');
  c.beverageDetails();
}
