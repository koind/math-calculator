import 'package:math_calculator/calculator.dart';

void main(List<String> arguments) {
  print(Calculator("10*5+4/2-1").execute());
  print(Calculator("(x*3-5)/5", {"x": 10}).execute());
  print(Calculator("3*x+15/(3+2)", {"x": 10}).execute());
  print(Calculator("12+30 - 7 + 18 + (22-7)").execute());
  print(Calculator("a+3+(4*7)-(b/3)", {"a": 77, "b": 9}).execute());
}
