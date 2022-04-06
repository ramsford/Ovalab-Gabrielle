import 'dart:ui';
import 'package:demo_hackathon/colors.dart';
import 'package:demo_hackathon/confirmation_diag.dart';
import 'package:demo_hackathon/login.dart';
import 'package:demo_hackathon/login_non_diag/diagnostic.dart';
import 'package:demo_hackathon/login_non_diag/information_non_diag.dart';
import 'package:demo_hackathon/pages/dashboard/dashboard.dart';
import 'package:demo_hackathon/register_and_connexion.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:url_launcher/link.dart';
import '../translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class Preoccupation extends StatefulWidget {
  Preoccupation({
    Key? key,
  }) : super(key: key);
  @override
  _PreoccupationState createState() => _PreoccupationState();
}

class _PreoccupationState extends State<Preoccupation> {
  bool val1 = false;
  bool val2 = false;
  bool val3 = false;
  bool val4 = false;
  bool val5 = false;
  bool val6 = false;
  bool val7 = false;
  bool val8 = false;
  bool val9 = false;
  bool val10 = false;

  int i = 0;
  int j = 0;
  bool antecedentOcularDone = true;
  void change1(bool? s) {
    setState(() {
      val1 = s!;
    });
  }

  void change2(bool? t) {
    setState(() {
      val2 = t!;
    });
  }

  void change3(bool? u) {
    setState(() {
      val3 = u!;
    });
  }

  void change4(bool? v) {
    setState(() {
      val4 = v!;
    });
  }

  void change5(bool? v) {
    setState(() {
      val5 = v!;
    });
  }

  void change6(bool? v) {
    setState(() {
      val6 = v!;
    });
  }

  void change7(bool? u) {
    setState(() {
      val7 = u!;
    });
  }

  void change8(bool? v) {
    setState(() {
      val8 = v!;
    });
  }

  void change9(bool? v) {
    setState(() {
      val9 = v!;
    });
  }

  void change10(bool? v) {
    setState(() {
      val10 = v!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => ConfirmationDiag()));
          },
          icon: Icon(Icons.arrow_back),
          color: AppColors.textColor,
        ),
      ),
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 0),
                child: Text(
                  'Mes préoccupations',
                  // LocaleKeys.text_list_antecedent_oc2.tr(),
                  style: TextStyle(
                    fontFamily: 'Calluna',
                    color: AppColors.textColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Divider(
                color: AppColors.textColor,
                height: 15.0,
                thickness: 0.5,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30, top: 20, bottom: 20),
                child: Text(
                  "Plusieurs choix possibles",
                  style: TextStyle(
                    fontFamily: 'Calluna',
                    color: AppColors.textColor,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Divider(
                color: AppColors.textColor,
                height: 15.0,
                thickness: 0.5,
              ),
              SizedBox(height: 10),
              CheckboxListTile(
                value: val1,
                onChanged: change1,
                title: Text(
                  'Je souhaite inverser mes symptômes',
                  style: TextStyle(
                      fontFamily: 'Calluna', color: AppColors.textColor),
                ),
                checkColor: Color.fromARGB(255, 248, 199, 168),
                controlAffinity: ListTileControlAffinity.leading,
                activeColor: AppColors.textColor,
              ),
              SizedBox(
                height: 20,
              ),
              CheckboxListTile(
                value: val2,
                onChanged: change2,
                title: Text(
                  'Je souhaite mieux comprendre ma pathologie',
                  style: TextStyle(
                      fontFamily: 'Calluna', color: AppColors.textColor),
                ),
                checkColor: AppColors.clicColor,
                controlAffinity: ListTileControlAffinity.leading,
                activeColor: AppColors.textColor,
                //selectedTileColor: AppColors.textColor,
              ),
              SizedBox(
                height: 10,
              ),
              CheckboxListTile(
                value: val3,
                onChanged: change3,
                title: Text(
                  'Je souhaite optimiser ma fertilité',
                  style: TextStyle(
                      fontFamily: 'Calluna', color: AppColors.textColor),
                ),
                checkColor: AppColors.clicColor,
                controlAffinity: ListTileControlAffinity.leading,
                activeColor: AppColors.textColor,
              ),
              SizedBox(
                height: 10,
              ),
              CheckboxListTile(
                value: val4,
                onChanged: change4,
                title: Text(
                  'Je suis en parcours de  PMA',
                  style: TextStyle(
                      fontFamily: 'Calluna', color: AppColors.textColor),
                ),
                checkColor: AppColors.clicColor,
                controlAffinity: ListTileControlAffinity.leading,
                activeColor: AppColors.textColor,
              ),
              SizedBox(
                height: 10,
              ),
              CheckboxListTile(
                value: val4,
                onChanged: change4,
                title: Text(
                  'Je souhaite perdre du poids',
                  style: TextStyle(
                      fontFamily: 'Calluna', color: AppColors.textColor),
                ),
                checkColor: AppColors.clicColor,
                controlAffinity: ListTileControlAffinity.leading,
                activeColor: AppColors.textColor,
              ),
              SizedBox(
                height: 10,
              ),
              CheckboxListTile(
                value: val5,
                onChanged: change5,
                title: Text(
                  'J’ai de l’acné ou de l’hirsutisme',
                  style: TextStyle(
                      fontFamily: 'Calluna', color: AppColors.textColor),
                ),
                checkColor: AppColors.clicColor,
                controlAffinity: ListTileControlAffinity.leading,
                activeColor: AppColors.textColor,
              ),
              SizedBox(
                height: 20,
              ),
              CheckboxListTile(
                value: val5,
                onChanged: change5,
                title: Text(
                  'Je m’inquiète pour ma santé',
                  style: TextStyle(
                      fontFamily: 'Calluna', color: AppColors.textColor),
                ),
                checkColor: AppColors.clicColor,
                controlAffinity: ListTileControlAffinity.leading,
                activeColor: AppColors.textColor,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 55.0),
                    child: Container(
                        child: GestureDetector(
                      onTap: () {},
                      child: FittedBox(
                        child: Material(
                          color: AppColors.clicColor,
                          elevation: 10.0,
                          borderRadius: BorderRadius.circular(10.0),
                          shadowColor: AppColors.clicColor,
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Container(
                                    height: 40,
                                    width: 250,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: AppColors.backgroundColor,
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(6.0)),
                                      gradient: LinearGradient(colors: [
                                        AppColors.clicColor,
                                        AppColors.clicColor,
                                      ]),
                                      // boxShadow: [
                                      //   BoxShadow(
                                      //       color: Color.fromRGBO(0, 206, 209, .2),
                                      //       blurRadius: 20.0,
                                      //       offset: Offset(0, 8))
                                      // ],
                                    ),
                                    child: Material(
                                      color: AppColors.backgroundColor,
                                      child: InkWell(
                                        onTap: () {
                                          showDialog(
                                            barrierDismissible: false,
                                            context: context,
                                            builder: (BuildContext ctx) {
                                              return AlertDialog(
                                                title: Text("Validation"),
                                                content: Text(
                                                    "Confirmer le questionnaire Symptomes"),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pushReplacement(
                                                              MaterialPageRoute(
                                                                  builder: (_) =>
                                                                      Account()));
                                                    },
                                                    child: Text("Confirmer"),
                                                  ),
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    child: Text("Annuler"),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        },
                                        child: Center(
                                          child: Text(
                                            'Valider le questionnaire',
                                            style: TextStyle(
                                              fontFamily: 'Calluna',
                                              color: Colors.black,
                                              fontSize: 16,
                                              //  fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
