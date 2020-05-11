import 'package:ecommerce_app/components/button_component.dart';
import 'package:ecommerce_app/components/field_component.dart';
import 'package:ecommerce_app/components/link_component.dart';
import 'package:ecommerce_app/views/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  group("when Login page is opened", () {
    testWidgets('Should display the text initial', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: LoginPage()));

      final text = find.byWidgetPredicate(
          (Widget widget) => widget is Text && widget.data == 'Login');
      expect(text, findsOneWidget);
    });

    testWidgets('Should display the fields', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: LoginPage()));

      Finder fieldEmail = getField('E-mail');
      expect(fieldEmail, findsOneWidget);

      Finder fieldPassword = getField('Senha');
      expect(fieldPassword, findsOneWidget);
    });

    testWidgets('Should display the link', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: LoginPage()));

      final link = find.byWidgetPredicate((Widget widget) =>
          widget is LinkComponent && widget.message == 'Esqueceu sua senha?');
      expect(link, findsOneWidget);
    });

    testWidgets('Should display the button', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: LoginPage()));

      final buttonSignup = find.byWidgetPredicate((Widget widget) =>
          widget is ButtonComponent && widget.label == 'LOGIN');
      expect(buttonSignup, findsOneWidget);
    });
  });
}

Finder getField(String label) {
  final fieldName = find.byWidgetPredicate(
      (Widget widget) => widget is FieldComponent && widget.label == label);
  return fieldName;
}
