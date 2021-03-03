import 'package:flutter/material.dart';
import 'package:picpay_clone/screens/main_page.dart';
import 'package:picpay_clone/screens/splash_page.dart';
import 'package:picpay_clone/utils/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PicPay',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        MainPage.id: (context) => MainPage(),
        SplashPage.id: (context) => SplashPage()
      },
      initialRoute: SplashPage.id,
    );
  }
}

