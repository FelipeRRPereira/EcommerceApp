import 'package:ecommerce_app/components/button_component.dart';
import 'package:ecommerce_app/components/field_component.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(30, 31, 40, 1),
          elevation: 0,
        ),
        backgroundColor: Color.fromRGBO(30, 31, 40, 1),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: Container(
              color: Color.fromRGBO(30, 31, 40, 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 18.0),
                  Text(
                    'Esqueceu sua senha',
                    style: TextStyle(
                      color: Color.fromRGBO(246, 246, 246, 1),
                      fontWeight: FontWeight.w700,
                      fontSize: 34.0,
                    ),
                  ),
                  SizedBox(height: 73.0),
                  Column(
                    children: <Widget>[
                      Text(
                        "Por favor, informe seu email de cadastro. Você recebera um link para criar sua nova senha.",
                        style: TextStyle(
                          color: Color.fromRGBO(246, 246, 246, 1),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 16.0),
                      FieldComponent(
                          'E-mail', TextInputType.emailAddress, null),
                      SizedBox(height: 8.0),
                      SizedBox(height: 30),
                      ButtonComponent('ENVIAR')
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
