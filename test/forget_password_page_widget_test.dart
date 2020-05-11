import 'package:ecommerce_app/components/button_component.dart';
import 'package:ecommerce_app/components/field_component.dart';
import 'package:ecommerce_app/views/forgot_password_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  group("when Forgot Password page is opened", () {
    testWidgets('Should display the text initial', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: ForgotPasswordPage()));

      final text = find.byWidgetPredicate((Widget widget) =>
          widget is Text && widget.data == 'Esqueceu sua senha');
      expect(text, findsOneWidget);
    });

    testWidgets('Should display the fields', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: ForgotPasswordPage()));

      final text = find.byWidgetPredicate((Widget widget) =>
          widget is Text &&
          widget.data ==
              'Por favor, informe seu email de cadastro. Você recebera um link para criar sua nova senha.');
      expect(text, findsOneWidget);

      Finder fieldEmail = getField('E-mail');
      expect(fieldEmail, findsOneWidget);
    });

    testWidgets('Should display the button', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: ForgotPasswordPage()));

      final buttonSignup = find.byWidgetPredicate((Widget widget) =>
          widget is ButtonComponent && widget.label == 'ENVIAR');
      expect(buttonSignup, findsOneWidget);
    });
  });
}

Finder getField(String label) {
  final fieldName = find.byWidgetPredicate(
      (Widget widget) => widget is FieldComponent && widget.label == label);
  return fieldName;
}
