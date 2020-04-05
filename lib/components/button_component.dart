import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  final String label;
  ButtonComponent(
    this.label,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 48,
      minWidth: 380,
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(25),
      ),
      color: Color.fromRGBO(239, 54, 81, 1),
      onPressed: () {},
      child: Text(
        this.label,
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    );
  }
}
