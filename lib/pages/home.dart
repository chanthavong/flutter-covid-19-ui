import 'package:covid_19_flutter_app/components/Mycard.dart';
import 'package:covid_19_flutter_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _controller =
        new TextEditingController(text: 'Vientiance');

    return Material(
      color: Color(0xff314CB9),
      child: ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage('assets/images/i1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            height: 290,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: <Widget>[
                Positioned(
                  bottom: 50,
                  left: 12,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'LAO',
                        style: TextStyle(
                            fontSize: 40,
                            color: Color(0xffFF8686),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'COVID-19',
                        style: TextStyle(
                            fontSize: 35,
                            color: Color(0xffFF8686),
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xffEAF0FF),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 7),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xffF5F6F8),
                        borderRadius: BorderRadius.all(Radius.circular(40.0)),
                        border: Border.all(color: Colors.grey)),
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.location_on,
                        ),
                        hintText: 'Search',
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                          color: my_color, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'ລາຍງານຜູ້ຕິດເຊື້ອ COVID -19',
                    style: TextStyle(fontSize: 22, color: my_color),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '29/03/2020',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Mycard(
                        num: 8,
                        title: 'ຕິດເຊື້ອ',
                        color: Color(0xffF3A48C).withOpacity(0.7),
                        textcolor: Color(0xffE07B04),
                        image: 'assets/images/bacteria.svg',
                      ),
                      Mycard(
                        num: 0,
                        title: 'ຕິດເຊື້ອ',
                        color: Color(0xff11BF11).withOpacity(0.29),
                        textcolor: Color(0xff03B563),
                        image: 'assets/images/bacteria.svg',
                      ),
                      Mycard(
                        num: 0,
                        title: 'ຕິດເຊື້ອ',
                        color: Color(0xffFA2828).withOpacity(0.5),
                        textcolor: Color(0xffE5355A),
                        image: 'assets/images/bacteria.svg',
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Container(
                      height: 250,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('assets/images/map.png'),
                        fit: BoxFit.cover,
                      )),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
