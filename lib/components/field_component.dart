import 'package:flutter/material.dart';

class FieldComponent extends StatelessWidget {
  final String label;
  final TextInputType keyBoardType;
  final String validationMessage;
  const FieldComponent(
    this.label,
    this.keyBoardType,
    this.validationMessage,
  );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: this.keyBoardType,
      obscureText: this.keyBoardType == null ? true : false,
      cursorColor: Colors.white,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color.fromRGBO(42, 44, 54, 1),
        contentPadding: new EdgeInsets.symmetric(
          vertical: 22.0,
          horizontal: 20.0,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromRGBO(42, 44, 54, 1),
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromRGBO(42, 44, 54, 1),
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
        labelText: this.label,
        labelStyle: TextStyle(
          color: Color.fromRGBO(171, 180, 189, 1),
        ),
      ),
      style: TextStyle(
        fontSize: 14,
        color: Colors.white,
      ),
      validator: (value) {
        if (value.isEmpty) {
          return this.validationMessage;
        }
        return null;
      },
    );
  }
}
