import 'package:bmi_calculator/classes/person.dart';
import 'package:bmi_calculator/classes/calculator.dart';
import 'dart:io';

void main(List<dynamic> enforce) {
  var p1 = Person();
  var bmiCalculator = Calculator();
  bool res = true;

  if (enforce.isEmpty) {
    try {
      print('Please enter in the name of the person: ');
      String? name = stdin.readLineSync().toString();
      p1.setName(name);
    } catch (e) {
      print('Invalid name passed. Please, submit a string name.');

      res = false;

      main([]);
    }
  }

  print('execução: $res \n');

  if (enforce.length > 1 && res == true) {
    try {
      print(
          'Please enter in ${p1.getName()}\'s weight (in killograms, i.e: 40): ');
      double? weight = double.parse(stdin.readLineSync()!);
      p1.setWeight(weight);
    } catch (e) {
      print(
          'Invalid weight passed. Please, submit a number of type double for weight.');

      res = false;

      main([p1.getName()]);
    }
  }

  print('execução: $res \n');

  if (enforce.length > 2 && res == true) {
    try {
      print(
          'Please enter in ${p1.getName()}\'s height (in meters, i.e: 1.55 | NOT 155): ');
      double? height = double.parse(stdin.readLineSync()!);
      if (height > 100) {
        res = false;

        throw (ArgumentError(
            'Invalid height format. Use meters instead of centimeters.'));
      } else {
        p1.setHeight(height);
      }
    } catch (e) {
      print(
          'Invalid height passed. Please, submit a number of type double for height.');

      res = false;

      main([p1.getName(), p1.getWeight()]);
    }
  }

  print('execução: $res \n');

  if (res == false) {
    print('interromper execução');

    return;
  }

  print('execução: $res \n');

  print(
      '${p1.getName()}\'s BMI is ${bmiCalculator.classify(p1.getWeight(), p1.getHeight())}');
}
