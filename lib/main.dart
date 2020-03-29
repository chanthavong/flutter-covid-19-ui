import 'package:covid_19_flutter_app/pages/Help.dart';
import 'package:covid_19_flutter_app/pages/Qa.dart';
import 'package:covid_19_flutter_app/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(MyApp());
}

// defile color
final my_color = Color(0xff6587D1);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: my_color, fontFamily: 'NotoSansLaoUI'),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  int _currentIndex = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: [
          Home(),
          Qa(),
          Help(),
        ],
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
            _controller.jumpToPage(_currentIndex);
          });
        },
//        tap item buttom
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/bacteria.svg',
                color: _currentIndex == 0 ? my_color : Colors.grey,
                height: 25.0,
              ),
              title: Text('ໜ້າຫຼັກ')),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), title: Text('ສອບຖາມ')),
          BottomNavigationBarItem(
              icon: Icon(Icons.add), title: Text('ຊ່ວຍເຫຼືອ')),
        ],
      ),
    );
  }
}
