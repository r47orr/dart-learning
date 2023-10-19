class Person {
  String _name = '';
  double _mass = 0;
  double _height = 0;

  void setName(String name) {
    _name = name;
  }

  String getName() {
    return _name;
  }

  void setWeight(double mass) {
    _mass = mass;
  }

  double getWeight() {
    return _mass;
  }

  void setHeight(double height) {
    _height = height;
  }

  double getHeight() {
    return _height;
  }
}
