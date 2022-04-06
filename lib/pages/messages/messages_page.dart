import 'dart:async';
import 'package:demo_hackathon/colors.dart';
import 'package:demo_hackathon/login_non_diag/DoctorMap.dart';
import 'package:demo_hackathon/pages/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/link.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class Comprendre extends StatefulWidget {
  @override
  _ComprendreState createState() => _ComprendreState();
}

class _ComprendreState extends State<Comprendre>
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
    Size size = MediaQuery.of(context).size;
    double viewInset = MediaQuery.of(context).viewInsets.bottom;
    double defaultLoginSize = size.height - (size.height * 0.2);
    double defaultRegisterSize = size.height - (size.height * 0.1);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        actions: <Widget>[],
        title: Text(
          'COMPRENDRE',
          style: TextStyle(
            fontFamily: 'Calluna', color: AppColors.textColor,
            fontSize: 20.0,
            //   fontWeight:  FontWeight.bold,
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => MyDashBoard()));
            },
            icon: const Icon(Icons.arrow_back_ios)),
        backgroundColor: AppColors.clicColor,
      ),
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.only(top: 50),
        child: Stack(
          children: [
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    child: Stack(
                      children: <Widget>[
                        // Positioned(
                        //   right: 0,
                        //   top: 0,
                        //   child: Container(
                        //     child: Image.asset('assets/background.png',
                        //         height: 380,
                        //         width: MediaQuery.of(context).size.width,
                        //         fit: BoxFit.fill),
                        //   ),
                        // ),

                        // SizedBox(
                        //   height: 50,
                        // ),
                        SizedBox(
                          height: 80,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: 50,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 110),
                              child: Text(
                                'LES PREMIERS MOTS',
                                style: TextStyle(
                                  fontFamily: 'Calluna',
                                  color: AppColors.illustationColor,
                                  fontSize: 19.0,
                                  // textAlign: TextAlign.center,
                                  fontWeight: FontWeight.bold,
                                ),
                                //  textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              height: 275.0,
                              child: ListView(
                                // This next line does the trick.
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  Column(children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 40, bottom: 20),
                                      child: Container(
                                          height: 175.0,
                                          child: GestureDetector(
                                            onTap: () {},
                                            child: FittedBox(
                                              child: Material(
                                                color: Color.fromARGB(
                                                    169, 221, 219, 217),
                                                elevation: 10.0,
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                shadowColor:
                                                    AppColors.clicColor,
                                                child: Column(
                                                  children: <Widget>[
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      padding:
                                                          EdgeInsets.all(0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            new BorderRadius
                                                                .circular(24.0),
                                                        child: Image.asset(
                                                          "assets/pf.jpg",
                                                          height: 90,
                                                          width: 90,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 35),
                                      child: Text(
                                        'La vision fondatrice\n de Clara Stephenson',
                                        style: TextStyle(
                                          fontFamily: 'Calluna',
                                          color: AppColors.textColor,
                                          fontSize: 15.0,
                                          // textAlign: TextAlign.center,
                                          //   fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Row(children: [
                                      Icon(Icons.camera_alt,
                                          size: 15, color: AppColors.textColor),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 35),
                                        child: Text(
                                          '4 min',
                                          style: TextStyle(
                                            fontFamily: 'Calluna',
                                            color: AppColors.illustationColor,
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w200,
                                          ),
                                        ),
                                      ),
                                    ]),
                                  ]),
                                  Column(children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 40, bottom: 20),
                                      child: Container(
                                          height: 175.0,
                                          child: GestureDetector(
                                            onTap: () {},
                                            child: FittedBox(
                                              child: Material(
                                                color: AppColors.clicColor,
                                                elevation: 10.0,
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                shadowColor:
                                                    AppColors.clicColor,
                                                child: Column(
                                                  children: <Widget>[
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      padding:
                                                          EdgeInsets.all(0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            new BorderRadius
                                                                .circular(24.0),
                                                        child: Image.asset(
                                                          "assets/11.png",
                                                          height: 90,
                                                          width: 90,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 35),
                                      child: Text(
                                        'La lettre de Resilience',
                                        style: TextStyle(
                                          fontFamily: 'Calluna',
                                          color: AppColors.textColor,
                                          fontSize: 15.0,
                                          // textAlign: TextAlign.center,
                                          //   fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Row(children: [
                                      Icon(Icons.book,
                                          size: 15, color: AppColors.textColor),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 35),
                                        child: Text(
                                          '4 min',
                                          style: TextStyle(
                                            fontFamily: 'Calluna',
                                            color: AppColors.illustationColor,
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w200,
                                          ),
                                        ),
                                      ),
                                    ]),
                                  ]),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 110),
                              child: Text(
                                'POUR COMMENCER',
                                style: TextStyle(
                                  fontFamily: 'Calluna',
                                  color: AppColors.illustationColor,
                                  fontSize: 19.0,
                                  // textAlign: TextAlign.center,
                                  fontWeight: FontWeight.bold,
                                ),
                                //  textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              height: 275.0,
                              child: ListView(
                                // This next line does the trick.
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  Column(children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 40, bottom: 20),
                                      child: Container(
                                          height: 175.0,
                                          child: GestureDetector(
                                            onTap: () {},
                                            child: FittedBox(
                                              child: Material(
                                                color: AppColors.clicColor,
                                                elevation: 10.0,
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                shadowColor:
                                                    AppColors.clicColor,
                                                child: Column(
                                                  children: <Widget>[
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      padding:
                                                          EdgeInsets.all(0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            new BorderRadius
                                                                .circular(24.0),
                                                        child: Image.asset(
                                                          "assets/1.png",
                                                          height: 90,
                                                          width: 90,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 35),
                                      child: Text(
                                        'Introduction sur le SOPK\net épidémiologie',
                                        style: TextStyle(
                                          fontFamily: 'Calluna',
                                          color: AppColors.textColor,
                                          fontSize: 15.0,
                                          // textAlign: TextAlign.center,
                                          //   fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 35),
                                      child: Text(
                                        '4 min',
                                        style: TextStyle(
                                          fontFamily: 'Calluna',
                                          color: AppColors.illustationColor,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w200,
                                        ),
                                      ),
                                    ),
                                  ]),
                                  Column(children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 40, bottom: 20),
                                      child: Container(
                                          height: 175.0,
                                          child: GestureDetector(
                                            onTap: () {},
                                            child: FittedBox(
                                              child: Material(
                                                color: AppColors.clicColor,
                                                elevation: 10.0,
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                shadowColor:
                                                    AppColors.clicColor,
                                                child: Column(
                                                  children: <Widget>[
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      padding:
                                                          EdgeInsets.all(0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            new BorderRadius
                                                                .circular(24.0),
                                                        child: Image.asset(
                                                          "assets/2.png",
                                                          height: 90,
                                                          width: 90,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 35),
                                      child: Text(
                                        'Physiopathologie du\nSOPK',
                                        style: TextStyle(
                                          fontFamily: 'Calluna',
                                          color: AppColors.textColor,
                                          fontSize: 15.0,
                                          // textAlign: TextAlign.center,
                                          //   fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 35),
                                      child: Text(
                                        '6 min',
                                        style: TextStyle(
                                          fontFamily: 'Calluna',
                                          color: AppColors.illustationColor,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w200,
                                        ),
                                      ),
                                    ),
                                  ]),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 140),
                              child: Text(
                                'PLAN DE ROUTE',
                                style: TextStyle(
                                  fontFamily: 'Calluna',
                                  color: AppColors.illustationColor,
                                  fontSize: 19.0,
                                  // textAlign: TextAlign.center,
                                  fontWeight: FontWeight.bold,
                                ),
                                //  textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              height: 275.0,
                              child: ListView(
                                // This next line does  the trick.
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  Column(children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 40, bottom: 20),
                                      child: Container(
                                          height: 175.0,
                                          child: GestureDetector(
                                            onTap: () {},
                                            child: FittedBox(
                                              child: Material(
                                                color: AppColors.clicColor,
                                                elevation: 10.0,
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                shadowColor:
                                                    AppColors.clicColor,
                                                child: Column(
                                                  children: <Widget>[
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      padding:
                                                          EdgeInsets.all(0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            new BorderRadius
                                                                .circular(24.0),
                                                        child: Image.asset(
                                                          "assets/3.png",
                                                          height: 90,
                                                          width: 90,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 35),
                                      child: Text(
                                        'Je relativise et je respire !',
                                        style: TextStyle(
                                          fontFamily: 'Calluna',
                                          color: AppColors.textColor,
                                          fontSize: 15.0,
                                          // textAlign: TextAlign.center,
                                          //   fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 35),
                                      child: Text(
                                        '2 min',
                                        style: TextStyle(
                                          fontFamily: 'Calluna',
                                          color: AppColors.illustationColor,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w200,
                                        ),
                                      ),
                                    ),
                                  ]),
                                  Column(children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 40, bottom: 20),
                                      child: Container(
                                          height: 175.0,
                                          child: GestureDetector(
                                            onTap: () {},
                                            child: FittedBox(
                                              child: Material(
                                                color: AppColors.clicColor,
                                                elevation: 10.0,
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                shadowColor:
                                                    AppColors.clicColor,
                                                child: Column(
                                                  children: <Widget>[
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      padding:
                                                          EdgeInsets.all(0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            new BorderRadius
                                                                .circular(24.0),
                                                        child: Image.asset(
                                                          "assets/4.png",
                                                          height: 90,
                                                          width: 90,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 35),
                                      child: Text(
                                        'L\'annonce diagnostique :\ncomment la gérer ?',
                                        style: TextStyle(
                                          fontFamily: 'Calluna',
                                          color: AppColors.textColor,
                                          fontSize: 15.0,
                                          // textAlign: TextAlign.center,
                                          //   fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 35),
                                      child: Text(
                                        '4 min',
                                        style: TextStyle(
                                          fontFamily: 'Calluna',
                                          color: AppColors.illustationColor,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w200,
                                        ),
                                      ),
                                    ),
                                  ]),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 170),
                              child: Text(
                                'RENAISSANCE',
                                style: TextStyle(
                                  fontFamily: 'Calluna',
                                  color: AppColors.illustationColor,
                                  fontSize: 19.0,
                                  // textAlign: TextAlign.center,
                                  fontWeight: FontWeight.bold,
                                ),
                                //  textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              height: 275.0,
                              child: ListView(
                                // This next line does  the trick.
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  Column(children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 40, bottom: 20),
                                      child: Container(
                                          height: 175.0,
                                          child: GestureDetector(
                                            onTap: () {},
                                            child: FittedBox(
                                              child: Material(
                                                color: AppColors.clicColor,
                                                elevation: 10.0,
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                shadowColor:
                                                    AppColors.clicColor,
                                                child: Column(
                                                  children: <Widget>[
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      padding:
                                                          EdgeInsets.all(0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            new BorderRadius
                                                                .circular(24.0),
                                                        child: Image.asset(
                                                          "assets/7.png",
                                                          height: 90,
                                                          width: 90,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 35),
                                      child: Text(
                                        'Se réapproprier son corps',
                                        style: TextStyle(
                                          fontFamily: 'Calluna',
                                          color: AppColors.textColor,
                                          fontSize: 15.0,
                                          // textAlign: TextAlign.center,
                                          //   fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 35),
                                      child: Text(
                                        '2 min',
                                        style: TextStyle(
                                          fontFamily: 'Calluna',
                                          color: AppColors.illustationColor,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w200,
                                        ),
                                      ),
                                    ),
                                  ]),
                                  Column(children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 40, bottom: 20),
                                      child: Container(
                                          height: 175.0,
                                          child: GestureDetector(
                                            onTap: () {},
                                            child: FittedBox(
                                              child: Material(
                                                color: AppColors.clicColor,
                                                elevation: 10.0,
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                shadowColor:
                                                    AppColors.clicColor,
                                                child: Column(
                                                  children: <Widget>[
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      padding:
                                                          EdgeInsets.all(0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            new BorderRadius
                                                                .circular(24.0),
                                                        child: Image.asset(
                                                          "assets/10.png",
                                                          height: 90,
                                                          width: 90,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 35),
                                      child: Text(
                                        'Communiquer sur sa sexualité',
                                        style: TextStyle(
                                          fontFamily: 'Calluna',
                                          color: AppColors.textColor,
                                          fontSize: 15.0,
                                          // textAlign: TextAlign.center,
                                          //   fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 35),
                                      child: Text(
                                        '3 min',
                                        style: TextStyle(
                                          fontFamily: 'Calluna',
                                          color: AppColors.illustationColor,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w200,
                                        ),
                                      ),
                                    ),
                                  ]),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 140),
                              child: Text(
                                'MON QUOTIDIEN',
                                style: TextStyle(
                                  fontFamily: 'Calluna',
                                  color: AppColors.illustationColor,
                                  fontSize: 19.0,
                                  // textAlign: TextAlign.center,
                                  fontWeight: FontWeight.bold,
                                ),
                                //  textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              height: 275.0,
                              child: ListView(
                                // This next line does  the trick.
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  Column(children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 40, bottom: 20),
                                      child: Container(
                                          height: 175.0,
                                          child: GestureDetector(
                                            onTap: () {},
                                            child: FittedBox(
                                              child: Material(
                                                color: AppColors.clicColor,
                                                elevation: 10.0,
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                shadowColor:
                                                    AppColors.clicColor,
                                                child: Column(
                                                  children: <Widget>[
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      padding:
                                                          EdgeInsets.all(0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            new BorderRadius
                                                                .circular(24.0),
                                                        child: Image.asset(
                                                          "assets/7.png",
                                                          height: 90,
                                                          width: 90,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 35),
                                      child: Text(
                                        'Guide de survie des\nfêtes avec un SOPK',
                                        style: TextStyle(
                                          fontFamily: 'Calluna',
                                          color: AppColors.textColor,
                                          fontSize: 15.0,
                                          // textAlign: TextAlign.center,
                                          //   fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 35),
                                      child: Text(
                                        '2 min',
                                        style: TextStyle(
                                          fontFamily: 'Calluna',
                                          color: AppColors.illustationColor,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w200,
                                        ),
                                      ),
                                    ),
                                  ]),
                                  Column(children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 40, bottom: 20),
                                      child: Container(
                                          height: 175.0,
                                          child: GestureDetector(
                                            onTap: () {},
                                            child: FittedBox(
                                              child: Material(
                                                color: AppColors.clicColor,
                                                elevation: 10.0,
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                shadowColor:
                                                    AppColors.clicColor,
                                                child: Column(
                                                  children: <Widget>[
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      padding:
                                                          EdgeInsets.all(0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            new BorderRadius
                                                                .circular(24.0),
                                                        child: Image.asset(
                                                          "assets/11.png",
                                                          height: 90,
                                                          width: 90,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 35),
                                      child: Text(
                                        'Notre sélection de traitements\nnaturels contre l\'acné',
                                        style: TextStyle(
                                          fontFamily: 'Calluna',
                                          color: AppColors.textColor,
                                          fontSize: 15.0,
                                          // textAlign: TextAlign.center,
                                          //   fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 35),
                                      child: Text(
                                        '4 min',
                                        style: TextStyle(
                                          fontFamily: 'Calluna',
                                          color: AppColors.illustationColor,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w200,
                                        ),
                                      ),
                                    ),
                                  ]),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 50, right: 140),
                              child: Text(
                                'EVOLUTIONS POSSIBLES DE LA MALADIE',
                                style: TextStyle(
                                  fontFamily: 'Calluna',
                                  color: AppColors.illustationColor,
                                  fontSize: 19.0,
                                  // textAlign: TextAlign.center,
                                  fontWeight: FontWeight.bold,
                                ),
                                //  textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              height: 275.0,
                              child: ListView(
                                // This next line does  the trick.
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  Column(children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 40, bottom: 20),
                                      child: Container(
                                          height: 175.0,
                                          child: GestureDetector(
                                            onTap: () {},
                                            child: FittedBox(
                                              child: Material(
                                                color: AppColors.clicColor,
                                                elevation: 10.0,
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                shadowColor:
                                                    AppColors.clicColor,
                                                child: Column(
                                                  children: <Widget>[
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      padding:
                                                          EdgeInsets.all(0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            new BorderRadius
                                                                .circular(24.0),
                                                        child: Image.asset(
                                                          "assets/7.png",
                                                          height: 90,
                                                          width: 90,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 35),
                                      child: Text(
                                        'J\'ai été diagnostiqué diabétique\n: informations',
                                        style: TextStyle(
                                          fontFamily: 'Calluna',
                                          color: AppColors.textColor,
                                          fontSize: 15.0,
                                          // textAlign: TextAlign.center,
                                          //   fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 35),
                                      child: Text(
                                        '2 min',
                                        style: TextStyle(
                                          fontFamily: 'Calluna',
                                          color: AppColors.illustationColor,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w200,
                                        ),
                                      ),
                                    ),
                                  ]),
                                  Column(children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 40, bottom: 20),
                                      child: Container(
                                          height: 175.0,
                                          child: GestureDetector(
                                            onTap: () {},
                                            child: FittedBox(
                                              child: Material(
                                                color: AppColors.clicColor,
                                                elevation: 10.0,
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                shadowColor:
                                                    AppColors.clicColor,
                                                child: Column(
                                                  children: <Widget>[
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      padding:
                                                          EdgeInsets.all(0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            new BorderRadius
                                                                .circular(24.0),
                                                        child: Image.asset(
                                                          "assets/13.png",
                                                          height: 90,
                                                          width: 90,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 35),
                                      child: Text(
                                        'Qu\'est ce que le\nsyndrome métabolique ?',
                                        style: TextStyle(
                                          fontFamily: 'Calluna',
                                          color: AppColors.textColor,
                                          fontSize: 15.0,
                                          // textAlign: TextAlign.center,
                                          //   fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 35),
                                      child: Text(
                                        '... min',
                                        style: TextStyle(
                                          fontFamily: 'Calluna',
                                          color: AppColors.illustationColor,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w200,
                                        ),
                                      ),
                                    ),
                                  ]),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 35,
                            ),
                          ],
                        ),
                        // Text(
                        //   "Forgot Password ?",
                        //   style: TextStyle(
                        //       color: Color.fromRGBO(64, 224, 208, 1),
                        //       fontWeight: FontWeight.bold,
                        //       fontSize: 18),
                        // ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }

  Widget PeriodCalendar() {
    return SfDateRangePicker(
      selectionColor: AppColors.clicColor,
      startRangeSelectionColor: AppColors.clicColor,
      endRangeSelectionColor: AppColors.clicColor,
      rangeSelectionColor: AppColors.clicColor,
      todayHighlightColor: AppColors.clicColor,
      backgroundColor: AppColors.backgroundColor,
      showNavigationArrow: true,
      selectionTextStyle: TextStyle(color: Colors.black),
      //rangeTextStyle: TextStyle(color: Colors.black),
    );
  }

  Widget myDetailsContainer1() {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 40,
            width: 250,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.backgroundColor,
              ),
              borderRadius: BorderRadius.all(Radius.circular(6.0)),
              gradient: LinearGradient(colors: [
                Colors.white,
                Colors.white,
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
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => FindDoctor()));
                },
                child: Center(
                  child: Text(
                    'Mesurer mes symptômes',
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
      ],
    );
  }

  Widget myDetailsContainer5() {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            height: 140,
            width: 250,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.backgroundColor,
              ),
              borderRadius: BorderRadius.all(Radius.circular(6.0)),
              gradient: LinearGradient(colors: [
                Colors.white,
                Colors.white,
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
                onTap: () {},
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        'Trouble de l\'alimentation',
                        style: TextStyle(
                          fontFamily: 'Calluna',
                          color: Colors.black,
                          fontSize: 18,
                          //  fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Ajouté il y a 2 heures',
                        style: TextStyle(
                          fontFamily: 'Calluna',
                          color: AppColors.textColor,
                          fontSize: 15,
                          //  fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 60),
                      Row(
                        children: [
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            'Sévérité',
                            style: TextStyle(
                              fontFamily: 'Calluna',
                              color: AppColors.textColor,
                              fontSize: 15,
                              //  fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 40),
                          Container(
                            width: 10,
                            height: 10,
                            child: Text(''),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black),
                          ),
                          SizedBox(width: 5),
                          Container(
                            width: 10,
                            height: 10,
                            child: Text(''),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black),
                          ),
                          SizedBox(width: 5),
                          Container(
                            width: 10,
                            height: 10,
                            child: Text(''),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black),
                          ),
                          SizedBox(width: 5),
                          Container(
                            width: 10,
                            height: 10,
                            child: Text(''),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black),
                          ),
                          SizedBox(width: 5),
                          Container(
                            width: 10,
                            height: 10,
                            child: Text(''),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                              ),
                              shape: BoxShape.circle,
                            ),
                            // color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget myDetailsContainer3() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 15.0, bottom: 30.0),
          child: Container(
              child: Text(
            'EXEMPLE',
            // LocaleKeys.text_tr6.tr(),
            style: TextStyle(
                color: Colors.white,
                fontSize: 26.0,
                fontWeight: FontWeight.bold),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // Container(
              //   child: Icon(
              //     Icons.book,
              //     color: Colors.white,
              //     size: 15.0,
              //   ),
              // ),
              Container(
                  padding: EdgeInsets.only(right: 15.0),
                  child: Text(
                    'Ici aussi',
                    // LocaleKeys.text_tr.tr(),
                    // "Take an appoint with your doctor\n if you don't want to share\n information",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
                  )),
            ],
          )),
        ),
        Container(
          padding: EdgeInsets.only(left: 15.0, top: 30, right: 20),
          child: Link(
            uri: Uri.parse('https://www.doctolib.fr/'),
            //target: LinkTarget.self,
            builder: (context, followlink) {
              return ButtonTheme(
                minWidth: 200,
                height: 50,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  color: Color.fromARGB(255, 107, 107, 107),
                  onPressed: followlink,
                  child: Text(
                    'Continue',
                    // LocaleKeys.text_tr2.tr(),
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget myDetailsContainer2() {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 40,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(6.0)),
              gradient: LinearGradient(colors: [
                Color.fromRGBO(64, 224, 208, 1),
                Color.fromRGBO(0, 206, 209, 0.4),
              ]),
              // boxShadow: [
              //   BoxShadow(
              //       color: Color.fromRGBO(0, 206, 209, .2),
              //       blurRadius: 20.0,
              //       offset: Offset(0, 8))
              // ],
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => MyDashBoard()));
                },
                child: Center(
                  child: Text(
                    'Mesurer mes symptômes',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
