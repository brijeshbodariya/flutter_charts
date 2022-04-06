import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_charts/charts_screen/bar_chart.dart';
import 'package:flutter_charts/charts_screen/line_chart.dart';
import 'package:flutter_charts/charts_screen/pie_chart.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
//    final double statusBarHeight = MediaQuery.of(context).padding.top;
    const double statusBarHeight = 24.00;

    List<Widget> _children = [
      getLineChart(statusBarHeight),
      getBarChart(statusBarHeight),
      getPieChart(statusBarHeight)
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Dev Chart Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
//        appBar: new AppBar(title: new Text("Chart Demo with Timer")),
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            onTap: _onTapTab,
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/line.png",
                  height: 32.0,
                  width: 32.0,
                ),
                label: "Line Chart",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/bar.png",
                  height: 32.0,
                  width: 32.0,
                ),
                label: "Bar Chart",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/pie.png",
                  height: 32.0,
                  width: 32.0,
                ),
                label: "Pie Chart",
              ),
            ]),
      ),
    );
  }

  void _onTapTab(int value) {
    setState(() {
      if (kDebugMode) {
        print(value);
      }
      _currentIndex = value;
    });
  }
}
