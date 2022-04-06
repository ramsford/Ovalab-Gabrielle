import 'dart:async';
import 'package:demo_hackathon/app_description.dart';
import 'package:demo_hackathon/login_non_diag/information_non_diag.dart';
import 'package:demo_hackathon/login_non_diag/questionnaire.dart';
import 'package:demo_hackathon/register_and_connexion.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import '../pages/dashboard/dashboard.dart';
import 'package:demo_hackathon/colors.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  final _keyForm = GlobalKey<FormState>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: ChildBody(),
      backgroundColor: AppColors.backgroundColor,
      resizeToAvoidBottomInset: false,
      appBar: null,
    );
  }
}

class ChildBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(children: [
        SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 150),
              SvgPicture.asset(
                'assets/LOGOseul.svg',
                height: 100,
                width: 250,
                color: AppColors.illustationColor,
              ),
              const SizedBox(height: 30),
              Text(
                "Gabrielle",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.textColor,
                  fontFamily: 'Calluna',
                  fontSize: 50,
                ),
              ),
              SizedBox(height: 130),
              const SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => AppDescription()));
                  },
                  child: FittedBox(
                    child: Material(
                      color: Colors.white,
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(10.0),
                      shadowColor: AppColors.clicColor,
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(
                            left: 60, right: 60, top: 20, bottom: 20),
                        child: Text(
                          "Continuer",
                          style: TextStyle(
                            fontFamily: 'Calluna',
                            color: AppColors.textColor,
                            fontSize: 16.0,
                            // fontWeight: FontWeight.w500,red
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                )),
              ),
            ],
          ),
        ),
      ]
          // Container(
          //   //child: TextButton(),
          // ),
          ),
    );
  }
}
