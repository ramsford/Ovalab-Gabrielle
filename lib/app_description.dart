import 'dart:async';
import 'dart:developer';
import 'package:demo_hackathon/login.dart';
import 'package:demo_hackathon/login_non_diag/information_non_diag.dart';
import 'package:demo_hackathon/login_non_diag/questionnaire.dart';
import 'package:demo_hackathon/register_and_connexion.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import '../pages/dashboard/dashboard.dart';
import 'package:demo_hackathon/colors.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 50),
              Stack(children: <Widget>[
                // const SizedBox(height: 20),
                Row(
                  children: [
                    const SizedBox(width: 100),
                    Text(
                      "Qui est Gabrielle ?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColors.textColor,
                          fontFamily: 'Calluna',
                          fontSize: 27,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),

                Padding(
                  padding: EdgeInsets.all(25),
                  child: Text(
                    "\n\n\nTu souffres du syndrome des ovaires polykystiques ou tu as une suspicion? Tu souhaites en savoir plus sur cette pathologie?\nGabrielle cultive une approche consciente et globale de l’équilibre hormonal féminin, en élaborant un contenu fiable et accessible qui placera les femmes en position d’effectuer des choix avertis et éclairés pour leur santé.\nAvec Gabrielle, apprends à maîtriser ton SOPK et à inverser tes symptômes, afin de regagner le contrôle sur ton corps et tes émotions, et retrouver enfin la pleine santé.\nNotre mission? Te donner toutes les connaissances dont vous avez besoin pour faire de ton diagnostic une force et non une fatalité.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.textColor,
                      fontFamily: 'Calluna',
                      fontSize: 15,
                    ),
                  ),
                ),

                Stack(children: [
                  Padding(
                    padding: EdgeInsets.only(top: 400, left: 0),
                    child: Image.asset(
                      'assets/illustration-gabrielle.png',
                      scale: 2.9,
                    ),
                  ),
                ]),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.only(top: 600, left: 40),
                  child: Container(
                      child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (_) => ConnexionRegister()));
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
                            80,
                            20,
                            80,
                            20,
                          ),
                          child: Text(
                            "J'ai besoin de Gabrielle",
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
              ]),
              const SizedBox(
                height: 0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
