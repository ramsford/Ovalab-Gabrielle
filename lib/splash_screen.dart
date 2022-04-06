import 'dart:async' show Timer;
import 'package:demo_hackathon/main_page.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'pages/dashboard/dashboard.dart';
import 'login.dart';
import 'colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => MainPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      //backgroundColor: Color.fromARGB(255, 159, 183, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/LOGOseul.svg',
              height: 100,
              width: 250,
              color: AppColors.illustationColor,
            ),
            const SizedBox(height: 30),
            const Text(
              "Gabrielle",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.textColor,
                fontFamily: 'Calluna',
                fontSize: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
