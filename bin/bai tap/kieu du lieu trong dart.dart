import 'dart:ffi';

void main(List<String> args) {
  // int , Float , double , String
  //mảng
  var arr = [4, 5];
  print(arr.length);
  //thêm phần tử cho mảng
  arr.add(5);

  print(arr.length);
  print(arr[0].runtimeType);
  // mảng kết hợp (map tương tự dict trong python)
  var map = {'thu 0': 3, 'thu 1': 4};
  //thêm phần tử cho map
  map.putIfAbsent('thu 2', () => 5);

  print(map.length);
  print(map['thu 0'].runtimeType);
  // var  kiểu dữ liệu null
  var a;
  // in ra null
  print(a.runtimeType);
  // dynamic kiểu dữ liệu chấp nhận tất cả các loại ở trên
  dynamic val;
  //in ra null
  print(val.runtimeType);

  a = 5;
  // in ra null
  print(a.runtimeType);
  val = 5;
  //in ra null
  print(val.runtimeType);

  // khác biệt giữa var và dynamic
  var b = 5;
  //b = 'dsff'; nếu ghi thêm dòng này chương trình sẽ báo lỗi
  //những với dynamic thì ko
  dynamic c = 5;
  c = 'con';
  print(c.runtimeType);

  // var viết thế này thì vẫn dc
  var d; // lúc này d dc hiểu là kiểu dynamic
  d = 'codfd';
  d = 5;
}
