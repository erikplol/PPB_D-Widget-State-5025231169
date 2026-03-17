// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:widget_state/home.dart';

void main() {
  testWidgets('Home renders expected content', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: Home()));

    expect(find.text('My first app'), findsOneWidget);
    expect(find.text('What image is that?'), findsOneWidget);
    expect(find.text('Food'), findsOneWidget);
    expect(find.text('Scenery'), findsOneWidget);
    expect(find.text('People'), findsOneWidget);
  });
}
