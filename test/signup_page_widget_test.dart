import 'package:ecommerce_app/components/button_component.dart';
import 'package:ecommerce_app/components/field_component.dart';
import 'package:ecommerce_app/components/link_component.dart';
import 'package:ecommerce_app/views/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  group("when Signup page is opened", () {
    testWidgets('Should display the text initial', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: SignupPage()));

      final text = find.byWidgetPredicate(
          (Widget widget) => widget is Text && widget.data == 'Cadastre-se');
      expect(text, findsOneWidget);
    });

    testWidgets('Should display the fields', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: SignupPage()));

      Finder fieldNameSignup = fieldSignup('Nome');
      expect(fieldNameSignup, findsOneWidget);

      Finder fieldEmailSignup = fieldSignup('E-mail');
      expect(fieldEmailSignup, findsOneWidget);

      Finder fieldPasswordSignup = fieldSignup('Senha');
      expect(fieldPasswordSignup, findsOneWidget);
    });

    testWidgets('Should display the link', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: SignupPage()));

      final linkSignup = find.byWidgetPredicate((Widget widget) =>
          widget is LinkComponent && widget.message == 'Já tem seu cadastro?');
      expect(linkSignup, findsOneWidget);
    });

    testWidgets('Should display the button', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: SignupPage()));

      final buttonSignup = find.byWidgetPredicate((Widget widget) =>
          widget is ButtonComponent && widget.label == 'Cadastrar');
      expect(buttonSignup, findsOneWidget);
    });
  });
}

Finder fieldSignup(String label) {
  final fieldNameSignup = find.byWidgetPredicate(
      (Widget widget) => widget is FieldComponent && widget.label == label);
  return fieldNameSignup;
}
