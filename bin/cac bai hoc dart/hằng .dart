void main(List<String> args) {
  var a = 1;
  //khai báo const
  // const <tên hằng > = <giá trị>
  // const là hằng số lúc biên dịch
  //tức là giá trị của nó phải là cụ thể ngay lúc bạn viết code.
  //const con = 5 + a; //nó sẽ báo lỗi

  // khai báo final
  // final <tên hằng> = <giá trị>
  // final là hằng số lúc chạy
  //Thực ra đây giống như khai báo biến
  //nhưng biến final chỉ được gán một lần duy nhất
  //gán lần thứ 2 sẽ lỗi (trước khi sử dụng phải có 1 lần gán)
  //.Giá trị hằng số này có thể khác nhau mỗi lần chạy
  final fi = 5 + a; // với final thì ko
  print(fi);
}
