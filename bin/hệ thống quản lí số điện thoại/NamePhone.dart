class NamePhone {
  String _name;
  String _phone;

  NamePhone(this._name, this._phone);

  String get getName => _name;

  void setName(String Name) => _name = Name;

  String get getPhone => _phone;

  void setPhone(Phone) => _phone = Phone;

  @override
  String toString() {
    return '|${_name.padRight(20)}|${_phone.padRight(20)}|';
  }
}
