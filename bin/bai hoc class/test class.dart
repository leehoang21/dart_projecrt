class dogs {
  String _ten;
  int _tuoi;
  String _color;
  dogs(String name, int age, [String color = 'den'])
      : _ten = name,
        _tuoi = age,
        _color = color;
  dogs.age1(String name, String color)
      : _ten = name,
        _tuoi = 1,
        _color = color;
  //contructor
  //dogs(this._ten, this._tuoi, this._color);

  //Initializer list
  //getter
  String get getTen => _ten;
  //setter
  set setTen(String tenMoi) {
    _ten = tenMoi;
  }

  int get gettuoi => this._tuoi;

  set settuoi(int value) => this._tuoi = value;

  get getColor => this._color;

  set setColor(String color) => this._color = color;

  @override
  String toString() {
    return '''
            ten  : $_ten 
            tuoi : $_tuoi
            mau  : $_color''';
  }
}
