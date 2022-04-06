import 'package:flutter/material.dart';
import 'package:flutter_charts/Screens/splash_screen.dart';
import 'package:flutter_charts/constant/constant.dart';
import 'package:flutter_charts/home_widget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        primaryColorDark: Colors.black,
      ),
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        home: (BuildContext context) => const Home()
      },
    );
  }
}
