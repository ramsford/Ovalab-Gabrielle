import 'dart:ui';
import 'package:demo_hackathon/login_non_diag/diagnostic.dart';
import 'package:demo_hackathon/login_non_diag/information_non_diag.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:url_launcher/link.dart';
import '../translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class Questionnaire extends StatefulWidget {
  Questionnaire({
    Key? key,
  }) : super(key: key);
  @override
  _QuestionnaireState createState() => _QuestionnaireState();
}

class _QuestionnaireState extends State<Questionnaire> {
  bool val1 = false;
  bool val2 = false;
  bool val3 = false;
  bool val4 = false;
  bool val5 = false;
  bool val6 = false;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => InformationNonDiag()));
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
        ),
      ),
      backgroundColor: Color(0xFF21BFBD),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 25, top: 0),
                child: Text(
                  'ok',
                  // LocaleKeys.text_list_antecedent_oc.tr(),
                  style: TextStyle(color: Colors.redAccent, fontSize: 16),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50),
                child: Text(
                  'ok2',
                  // LocaleKeys.text_list_antecedent_oc2.tr(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Divider(
                color: Colors.white,
                height: 15.0,
                thickness: 0.5,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30, top: 20, bottom: 20),
                child: Text(
                  "PARTIE 1 :",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              CheckboxListTile(
                value: val1,
                onChanged: change1,
                title: Text(
                  'Connaisez vous dans votre famille, des personnes possédant une des pathologies suivantes :\n-Glaucome congénitale\n-rétinoblastome\n-cataracte congénitale\n-malformartion oculaires',
                  style: TextStyle(color: Colors.white),
                ),
                checkColor: Color(0xFF21BFBD),
                controlAffinity: ListTileControlAffinity.trailing,
                activeColor: Colors.white,
              ),
              SizedBox(
                height: 20,
              ),
              CheckboxListTile(
                value: val2,
                onChanged: change2,
                title: Text(
                  'Est-ce que votre enfant a une prématurité infèrieur à 31 semaines et/ou possède un petit poids de naissance infèrieur à 1250 grammes',
                  style: TextStyle(color: Colors.white),
                ),
                checkColor: Color(0xFF21BFBD),
                controlAffinity: ListTileControlAffinity.trailing,
                activeColor: Colors.white,
                //selectedTileColor: Colors.white,
              ),
              SizedBox(
                height: 20,
              ),
              CheckboxListTile(
                value: val3,
                onChanged: change3,
                title: Text(
                  'Est ce que votre enfant possède une craniosténoses ?',
                  style: TextStyle(color: Colors.white),
                ),
                checkColor: Color(0xFF21BFBD),
                controlAffinity: ListTileControlAffinity.trailing,
                activeColor: Colors.white,
              ),
              SizedBox(
                height: 20,
              ),
              CheckboxListTile(
                value: val4,
                onChanged: change4,
                title: Text(
                  'Est ce que votre enfant possède une infection maternofoetales ?',
                  style: TextStyle(color: Colors.white),
                ),
                checkColor: Color(0xFF21BFBD),
                controlAffinity: ListTileControlAffinity.trailing,
                activeColor: Colors.white,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30, top: 20, bottom: 20),
                child: Text(
                  "PARTIE 2 :",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              CheckboxListTile(
                value: val5,
                onChanged: change5,
                title: Text(
                  'Connaisez vous dans votre famille, des personnes possédant une amétrie forte apparue dans la petite enfance :\n-nystagmus\n-amblyopie',
                  style: TextStyle(color: Colors.white),
                ),
                checkColor: Color(0xFF21BFBD),
                controlAffinity: ListTileControlAffinity.trailing,
                activeColor: Colors.white,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 75,
                      top: 40,
                    ),
                    child: Text(
                      'ok5',
                      // LocaleKeys.text_list_antecedent_oc3.tr(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 40,
                    ),
                    child: IconButton(
                      onPressed: () {
                        showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (BuildContext ctx) {
                            return AlertDialog(
                              title: Text("Validation"),
                              content: Text("Confirmer le questionnaire"),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (_) => Diagnostic()));
                                  },
                                  child: Text("Confirmer"),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text("Annuler"),
                                ),
                              ],
                            );
                          },
                        );
                        //   }
                      },
                      icon: Icon(Icons.check),
                      color: Colors.white,
                    ),
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
