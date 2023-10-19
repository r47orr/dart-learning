int calculate() {
  return 6 * 7;
}

List<dynamic> types() {
  // declare and assign variable
  const int num = 3;

  // dynamically assign a new variable
  var num1 = 3;

  // initialize variable
  int num2;

  num2 = 0;

  /* below are the types:
    int, double, String, bool, 
    List/List<type>, Map<type>, 
    constant, Dynamic, Date
  */

  // declare dimensional variables
  // list
  List<String> staticList = [];

  // dynamically declare a list
  var dynList = [];
  dynList.add(num);
  dynList.add(num1);
  dynList.add(num2);
  dynList.add(staticList);

  // if we want to see the values...
  // for (int val = 0; val < dynList.length; val++) {
  //   print('Variable value: ${dynList[val]}');
  // }

  return dynList;
}

Map<String, dynamic> typeFunctions() {
  Map<String, dynamic> obj = {};

  obj['valor'] = types();

  print(obj);

  return obj;
}
