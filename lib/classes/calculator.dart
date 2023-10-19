enum Category {
  severeUnderweight, // < 16
  moderateUnderweight, // >= 16 &&   < 17
  mildUnderweight, // >= 17 &&   < 18.5
  normalWeight, // >= 18.5 && < 25
  overweight, // >= 25 &&   < 30
  obesityClass1, // >= 30 && < 35
  obesityClass2, // >= 35 && < 40
  obesityClass3, // >= 40
  error // none of the above (invalid value)
}

class Calculator {
  // BMI formula is mass divided by height squared...
  double _calculate(double mass, double height) {
    return (mass / (height * height));
  }

  Map<Category, String> classify(double mass, double height) {
    final double bmi = _calculate(mass, height);

    print('BMI value: ${bmi.toStringAsPrecision(4)}');

    switch (bmi) {
      case < 16:
        return {Category.severeUnderweight: 'Severe underweight'};
      case >= 16 && < 17:
        return {Category.moderateUnderweight: 'Moderate underweight'};
      case >= 17 && < 18.5:
        return {Category.mildUnderweight: 'Mild underweight'};
      case >= 18.5 && < 25:
        return {Category.normalWeight: 'Normal weight'};
      case >= 25 && < 30:
        return {Category.overweight: 'Overweight'};
      case >= 30 && < 35:
        return {Category.obesityClass1: 'Mild obesity (Class 1)'};
      case >= 35 && < 40:
        return {Category.obesityClass2: 'Moderate obesity (Class 2)'};
      case >= 40:
        return {Category.obesityClass3: 'Severe obesity (Class 3)'};
      default:
        return {Category.error: 'Invalid values, no classification'};
    }
  }
}
