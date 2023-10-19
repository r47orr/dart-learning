import 'package:dart_learning/dart_learning.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), equals(42));
  });

  test('types', () {
    expect(types(), equals([3, 3, 0, []]));
  });
}
