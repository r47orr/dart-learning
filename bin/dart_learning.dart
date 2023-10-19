import 'package:dart_learning/dart_learning.dart' as dart_learning;

int main(List<String> args) {
  print('Hello world: ${dart_learning.calculate()}!');

  if (args == []) {
    return 0;
  }

  dart_learning.typeFunctions();

  print(args == [] ? 0 : args);

  return 0;
}
