// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:paddington/paddington.dart';

void main() {
  test('Non-flexible widget wrapped with padding', () {
    final widgets = padded(children: [Text('test')]);
    expect(widgets.first, isA<Padding>());
  });

  test('Expanded should not be wrapped', () {
    final widgets = padded(children: [Expanded(child: Text('test'))]);
    expect(widgets.first, isA<Expanded>());
  });

  test('Spacer should not be wrapped', () {
    final widgets = padded(children: [Spacer()]);
    expect(widgets.first, isA<Spacer>());
  });

  test('Flexible should not be wrapped', () {
    final widgets = padded(children: [Flexible(child: Text('test'))]);
    expect(widgets.first, isA<Flexible>());
  });
  test('Can opt out of wrapping', () {
    final widgets = padded(children: [Text('test').noPadding()]);

    expect(widgets.first, isA<Text>());
  });
  test('Can opt some children out of wrapping', () {
    final widgets = padded(children: [
      Text('test').noPadding(),
      Text('test2'),
    ]);

    expect(widgets.first, isA<Text>());
    expect(widgets[1], isA<Padding>());
  });
  test('Padding gets widget key', () {
    final key = Key('testKey');
    final widgets = padded(children: [Text('test', key: key)]);

    expect(widgets.first.key, equals(key));
  });
}
