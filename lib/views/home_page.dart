import 'package:ecommerce_app/components/button_component.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: new ExactAssetImage('images/home_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Brechó\nDas Gurias',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 50.0,
                    ),
                  ),
                ],
              ),
              width: 380,
            ),
            SizedBox(height: 22.0),
            ButtonComponent('LOGIN'),
            SizedBox(height: 22.0),
            ButtonComponent('CADASTRE-SE'),
            SizedBox(height: 70.0),
          ],
        ),
      ),
    );
  }
}
