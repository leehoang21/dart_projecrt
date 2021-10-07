Future<String> goiDoAn() async {
  print('bat dau lam mon an');
  var monAn = await lamDoAn();
  return 'mon an $monAn cua ban da xong';
}

Future<String> lamDoAn() {
  //return Future.delayed(Duration(seconds: 5), () => 'com ga');
  return Future.delayed(
      Duration(seconds: 5), () => throw Exception('quan het com'));
}

// Future<void> main(List<String> args) async {
//   print('bat dau goi do an...');
//   print(await goiDoAn());
//   print('dan goi do an');
// }

void main(List<String> args) async {
  // var monAn = goiDoAn();
  // print('dang goi do an...');
  // await monAn.then((result) => print(result));

  print('bat dau goi do an...');
  try {
    var monAn = goiDoAn();
    print(await monAn);
  } catch (e) {
    print('$e');
  }
}
