import 'dart:async';
import 'package:flutter/material.dart';
import 'package:se_534_project/carpage.dart';
import 'package:se_534_project/home_page.dart';
import './login_screen.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RentIt',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/homepage': (context) => HomePage(),
        '/carpage': (context) => CarPage()
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 4), () {
      print('reached');
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[800],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 1,
                child: Image.network('https://media3.giphy.com/media/W5NO9EmJww1Bgn7SyS/giphy.gif?cid=ecf05e479cdycmqyz96syr3fkvbf93y0rr6uc68i2jmwkm6v&rid=giphy.gif&ct=g'),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              alignment: Alignment.bottomCenter,
              width: double.infinity,
              child: Text(
                'Ready \"2\" GO',
                style: TextStyle(
                    fontFamily: 'Font2',
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.aspectRatio * 150,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
