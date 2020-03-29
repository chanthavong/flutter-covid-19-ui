import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Mycard extends StatelessWidget {
  final int num;
  final String title;
  final image;
  final Color color;
  final Color textcolor;

  Mycard({this.title, this.image, this.num, this.color, this.textcolor});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: color,
      child: Container(
        width: 120,
        height: 150,
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SvgPicture.asset(
                this.image,
                width: 40,
                height: 40,
                color: textcolor,
              ),
              Text(
                this.num.toString(),
                style: TextStyle(fontSize: 60, color: textcolor),
              ),
              Text(
                this.title,
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
