import 'package:bmi_calculator/classes/calculator.dart' as calculator;
import 'package:bmi_calculator/classes/person.dart' as person;
import 'package:test/test.dart';

void main() {
  test('calculator', () {
    var calc = calculator.Calculator();

    expect(calc.classify(68, 1.80),
        equals({calculator.Category.normalWeight: 'Normal weight'}));

    expect(calc.classify(0, 5),
        equals({calculator.Category.severeUnderweight: 'Severe underweight'}));
  });

  test('person', () {
    var p = person.Person();
    p.setName('Mike');
    p.setHeight(1.70);
    p.setWeight(65);
    expect(p.getName(), equals('Mike'));
    expect(p.getHeight(), equals(1.70));
    expect(p.getWeight(), 65);
  });
}
