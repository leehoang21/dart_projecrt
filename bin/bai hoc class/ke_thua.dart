class Product {
  String _name;
  num _price;
  String _expDate;

  String get getname => this._name;

  set name(String value) => this._name = value;

  get price => this._price;

  set price(value) => this._price = value;

  get expDate => this._expDate;

  set expDate(value) => this._expDate = value;

  Product(this._name, this._price, this._expDate);

  void printDetails() {
    print("Name: ${this._name}");
    print("Price: ${this._price}");
    print("Expiration Date: ${this._expDate}");
  }
}

class Beverage extends Product {
  num _liters;
  String _type;
  num get liters => this._liters;

  set liters(num value) => this._liters = value;

  get type => this._type;

  set type(value) => this._type = value;
  Beverage(String name, num price, String expDate, this._liters, this._type)
      : super(name, price, expDate);

  void beverageDetails() {
    printDetails();
    print("Liters: ${this._liters}");
    print("Type: ${this._type}");
  }
}
