import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_app_builder/Screens/home/home_screen.dart';
import 'package:flutter_app_builder/constrants.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(MaterialApp(
    home: MySplashScreen(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'App Móng Cái',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage());
  }
}

class MySplashScreen extends StatefulWidget {
  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  void initState() {
    super.initState();
    // Future.delayed(Duration(seconds: 3), () {
    //   Navigator.push(
    //       context,
    //       MaterialPageRoute(
    //         builder: (context) => MyApp(),
    //       ));
    // });

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: FlutterLogo(),
        nextScreen: MyApp(),
        splashTransition:  SplashTransition.slideTransition,
        pageTransitionType: PageTransitionType.bottomToTop,
        backgroundColor: Colors.amber,
        duration: 5000,
      ),
    );
  }
}
