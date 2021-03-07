import 'package:Instagram/Features/BottomNavigationBar/presentation/pages/BottomTab.dart';
import 'package:Instagram/Features/Home/presentation/pages/Home.dart';
import 'package:Instagram/Features/Login/presentation/pages/Login.dart';
import 'package:Instagram/Features/Login/presentation/pages/ReLogin.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        "/": (context) => ReLoginScreen(),
        "/Login": (context) => LoginScreen(),
        "/Home": (context) => HomeScreen(),
        "/BottomNavigationBar": (context) => CustomBottomNavigationBar(),
      },
    );
  }
}
