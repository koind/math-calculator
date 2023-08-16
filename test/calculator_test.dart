import 'package:math_calculator/calculator.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(Calculator("10*5+4/2-1").execute(), 51);
    expect(Calculator("(x*3-5)/5", {"x": 10}).execute(), 5);
    expect(Calculator("3*x+15/(3+2)", {"x": 10}).execute(), 33);
    expect(Calculator("12+30 - 7 + 18 + (22-7)").execute(), 68);
    expect(Calculator("a+3+(4*7)-(b/3)", {"a": 77, "b": 9}).execute(), 105);
  });
}
