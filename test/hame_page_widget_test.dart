import 'package:ecommerce_app/components/button_component.dart';
import 'package:ecommerce_app/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('When Home Page is opened', () {
    testWidgets('Should display the main image', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: HomePage()));

      WidgetPredicate widgetSelectedPredicate = (Widget widget) =>
          widget is Container &&
          widget.decoration ==
              BoxDecoration(
                image: DecorationImage(
                  image: new ExactAssetImage('images/home_background.png'),
                  fit: BoxFit.cover,
                ),
              );

      expect(find.byWidgetPredicate(widgetSelectedPredicate), findsOneWidget);
    });
    testWidgets('Should display the text initial', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: HomePage()));

      final text = find.byWidgetPredicate((Widget widget) =>
          widget is Text && widget.data == 'Brechó\nDas Gurias');
      expect(text, findsOneWidget);
    });
    testWidgets('Should display the buttons', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: HomePage()));

      final buttonLogin = find.byWidgetPredicate((Widget widget) =>
          widget is ButtonComponent && widget.label == 'LOGIN');
      expect(buttonLogin, findsOneWidget);

      final buttonSingIn = find.byWidgetPredicate((Widget widget) =>
          widget is ButtonComponent && widget.label == 'CADASTRE-SE');
      expect(buttonSingIn, findsOneWidget);
    });
  });
}
