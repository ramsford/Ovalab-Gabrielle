import 'dart:async';
import 'package:demo_hackathon/app_description.dart';
import 'package:demo_hackathon/login_non_diag/information_non_diag.dart';
import 'package:demo_hackathon/login_non_diag/questionnaire.dart';
import 'package:demo_hackathon/preoccupation.dart';
import 'package:demo_hackathon/register_and_connexion.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import '../pages/dashboard/dashboard.dart';
import 'package:demo_hackathon/colors.dart';

class ConfirmationDiag extends StatefulWidget {
  @override
  _ConfirmationDiagState createState() => _ConfirmationDiagState();
}

class _ConfirmationDiagState extends State<ConfirmationDiag>
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
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: SvgPicture.asset(
                  'assets/LOGOseul.svg',
                  height: 70,
                  width: 70,
                  color: AppColors.illustationColor,
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(
                  bottom: 30,
                ),
                child: Text(
                  "Gabrielle",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.textColor,
                    fontFamily: 'Calluna',
                    fontSize: 30,
                  ),
                ),
              ),
              Divider(
                color: AppColors.textColor,
                height: 15.0,
                thickness: 0.5,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 50,
                  bottom: 50,
                ),
                child: Text(
                  "Confirmation du diagnostic",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.illustationColor,
                    fontFamily: 'Calluna',
                    fontSize: 27,
                  ),
                ),
              ),
              SizedBox(height: 0),
              Padding(
                padding: EdgeInsets.only(bottom: 40),
                child: Text(
                  "Sur la base des recommandations émises par la Société américaine d’endocrinologie en 2013, le diagnostic du syndrome des ovaires polykystiques doit être posé\nlorsqu’au moins deux des trois critères de Rotterdam (Rotterdam ESHRE/ASRM-Sponsored PCOS Consensus Workshop Group, 2004) sont constatés, à savoir :\n\n- l’hyperandrogénie clinique (acné, hirsutisme, alopécie androgénique) ou biologique; - des cycles anovulatoires (absence de règles ou règles irrégulières);\n\n- Des ovaires d’aspect polykystique Après avoir lu ces informations, confirmez-vous appartenir à ces critères et   avoir un diagnostic de SOPK confirmé par\nun professionnel de santé  ?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.textColor,
                    fontFamily: 'Calluna',
                    fontSize: 15,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => Preoccupation()));
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
                            left: 80, right: 80, top: 20, bottom: 20),
                        child: Text(
                          "Je confirme",
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
