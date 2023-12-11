// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Counter increments smoke test', () async {
    final test1 = Combination(0, 1);
    final test2 = Combination('2', '1');
    final test3 = Combination(1, 0);
    print(15.51513515.toStringAsFixed(1));
  });
}

class Combination<T> {
  final T left;
  final T right;

  Combination(this.left, this.right);
  @override
  bool operator ==(Object? other) {
    if (other is! Combination) return false;
    if (other.runtimeType != runtimeType) return false;
    if (left == other.left) return right == other.right;
    if (left == other.right) return right == other.left;
    return false;
  }

  @override
  int get hashCode => (left.hashCode + right.hashCode).hashCode;
}
