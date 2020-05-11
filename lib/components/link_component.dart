import 'package:flutter/material.dart';

class LinkComponent extends StatelessWidget {
  final String message;

  const LinkComponent(this.message);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FlatButton(
          onPressed: () {},
          child: Row(
            children: <Widget>[
              Text(
                this.message,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                width: 5.0,
              ),
              Icon(
                Icons.trending_flat,
                color: Color.fromRGBO(239, 54, 81, 1),
              )
            ],
          ),
          padding: EdgeInsets.symmetric(horizontal: 10.0),
        ),
      ],
    );
  }
}
