import 'package:flutter/material.dart';

class Qa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage('assets/images/i2.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          height: 290,
          child: Text('ok'),
        )
      ],
    );
  }
}
