import 'dart:async';
import 'package:demo_hackathon/login.dart';
import 'package:demo_hackathon/login_non_diag/information_non_diag.dart';
import 'package:demo_hackathon/login_non_diag/questionnaire.dart';
import 'package:demo_hackathon/preoccupation.dart';
import 'package:demo_hackathon/question_perso.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import '../pages/dashboard/dashboard.dart';
import 'package:demo_hackathon/colors.dart';

class ConnexionRegister extends StatefulWidget {
  @override
  _ConnexionRegisterState createState() => _ConnexionRegisterState();
}

class _ConnexionRegisterState extends State<ConnexionRegister>
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
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: AppColors.pictoColor,
        ),
        backgroundColor: AppColors.backgroundColor,
        elevation: 0.0,
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back_ios),
        //   onPressed: () {
        //     Navigator.of(context)
        //         .pushReplacement(MaterialPageRoute(builder: (_) => Account()));
        //   },
        // ),
      ),
    );
  }
}

class ChildBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 100), // const SizedBox(height: 20),
            Row(
              children: [
                const SizedBox(width: 100),
                SvgPicture.asset(
                  'assets/LOGOseul.svg',
                  height: 50,
                  width: 50,
                  color: AppColors.illustationColor,
                ),
                const SizedBox(width: 12),
                Text(
                  "Gabrielle",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.textColor,
                    fontFamily: 'Calluna',
                    fontSize: 35,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),

            // Text(
            //   "Slogan exemple",
            //   textAlign: TextAlign.center,
            //   style: TextStyle(
            //     color: AppColors.textColor,
            //     fontFamily: 'Calluna',
            //     fontSize: 20,
            //   ),
            // ),
            SizedBox(height: 125),
            Image.asset(
              'assets/illustration-accueil.png',
              height: 250,
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                  child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => QuestionPerso()));
                },
                child: FittedBox(
                  child: Material(
                    color: Colors.white,
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(10.0),
                    shadowColor: AppColors.clicColor,
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.fromLTRB(
                        40,
                        20,
                        40,
                        20,
                      ),
                      child: Text(
                        "Se créer un compte",
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
            const SizedBox(
              height: 0,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                  child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => QuestionPerso()));
                },
                child: FittedBox(
                  child: Material(
                    color: Colors.white,
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(10.0),
                    shadowColor: AppColors.clicColor,
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.fromLTRB(
                        65,
                        20,
                        65,
                        20,
                      ),
                      child: Text(
                        "Se connecter",
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

        );
  }
}
