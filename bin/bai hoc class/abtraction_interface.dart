abstract class animal {
  int a = 4;
  int b = 5;
  void printz() {
    print(a);
  }
}

class dog implements animal{
  String ten = 'cho';

  @override
  int a =3;

  @override
  int b =5;

  @override
  void printz() {
    // TODO: implement printz
  }
}

class cat implements animal {
  String ten = 'meo';
  @override
  void printz() {
    // TODO: implement printz
  }
  @override
  int a = 3;
  @override
  int b = 4;
}
class dongvat extends dog with cat , animal{
  
}
