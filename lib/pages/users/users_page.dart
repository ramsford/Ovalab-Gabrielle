import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:demo_hackathon/article.dart';
import 'package:demo_hackathon/colors.dart';
import 'package:demo_hackathon/login_non_diag/DoctorMap.dart';
import 'package:demo_hackathon/pages/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class ManageScreen extends StatefulWidget {
  const ManageScreen({Key? key}) : super(key: key);

  @override
  State<ManageScreen> createState() => _ManageScreenState();
}

class _ManageScreenState extends State<ManageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => MyDashBoard()));
            },
            icon: const Icon(Icons.arrow_back_ios)),
        actions: <Widget>[],
        title: const Text(
          'GÉRER',
          style: TextStyle(
            fontFamily: 'Calluna', color: AppColors.textColor,
            fontSize: 20.0,
            //   fontWeight:  FontWeight.bold,
          ),
        ),
        backgroundColor: AppColors.clicColor,
      ),
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Stack(
          children: [
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    child: Stack(
                      children: <Widget>[
                        const SizedBox(
                          height: 80,
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const SizedBox(
                                height: 50,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 50),
                                child: Text(
                                  'ALIMENTATION INTUITIVE',
                                  style: TextStyle(
                                    fontFamily: 'Calluna',
                                    color: AppColors.illustationColor,
                                    fontSize: 19.0,
                                    // textAlign: TextAlign.center,
                                    fontWeight: FontWeight.bold,
                                  ),
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
                                        child: SizedBox(
                                            height: 175.0,
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.of(context)
                                                    .pushReplacement(
                                                        MaterialPageRoute(
                                                            builder: (_) =>
                                                                ArticleScreen()));
                                                //TODO Put articles
                                              },
                                              child: FittedBox(
                                                child: Material(
                                                  color: AppColors.clicColor,
                                                  elevation: 10.0,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  shadowColor:
                                                      AppColors.clicColor,
                                                  child: Column(
                                                    children: <Widget>[
                                                      Container(
                                                        alignment:
                                                            Alignment.center,
                                                        padding:
                                                            const EdgeInsets
                                                                .all(0),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              new BorderRadius
                                                                      .circular(
                                                                  24.0),
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
                                      const Padding(
                                        padding: EdgeInsets.only(left: 35),
                                        child: Text(
                                          'Comment puis-je réduire\nle grignotage ?',
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
                                      const Padding(
                                        padding: EdgeInsets.only(left: 35),
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
                                        child: SizedBox(
                                            height: 175.0,
                                            child: GestureDetector(
                                              onTap: () {},
                                              child: FittedBox(
                                                child: Material(
                                                  color: AppColors.clicColor,
                                                  elevation: 10.0,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  shadowColor:
                                                      AppColors.clicColor,
                                                  child: Column(
                                                    children: <Widget>[
                                                      Container(
                                                        alignment:
                                                            Alignment.center,
                                                        padding:
                                                            const EdgeInsets
                                                                .all(0),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              new BorderRadius
                                                                      .circular(
                                                                  24.0),
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
                                      const Padding(
                                        padding: EdgeInsets.only(left: 35),
                                        child: Text(
                                          'Manger en pleine conscience',
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
                                      const Padding(
                                        padding: EdgeInsets.only(left: 35),
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
                              const Padding(
                                padding: EdgeInsets.only(right: 160),
                                child: Text(
                                  'MOUVEMENTS',
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
                                        child: SizedBox(
                                            height: 175.0,
                                            child: GestureDetector(
                                              onTap: () {},
                                              child: FittedBox(
                                                child: Material(
                                                  color: AppColors.clicColor,
                                                  elevation: 10.0,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  shadowColor:
                                                      AppColors.clicColor,
                                                  child: Column(
                                                    children: <Widget>[
                                                      Container(
                                                        alignment:
                                                            Alignment.center,
                                                        padding:
                                                            const EdgeInsets
                                                                .all(0),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              new BorderRadius
                                                                      .circular(
                                                                  24.0),
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
                                      const Padding(
                                        padding: EdgeInsets.only(left: 35),
                                        child: Text(
                                          'Exercices de yoga',
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
                                      const Padding(
                                        padding: EdgeInsets.only(left: 35),
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
                                        child: SizedBox(
                                            height: 175.0,
                                            child: GestureDetector(
                                              onTap: () {},
                                              child: FittedBox(
                                                child: Material(
                                                  color: AppColors.clicColor,
                                                  elevation: 10.0,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  shadowColor:
                                                      AppColors.clicColor,
                                                  child: Column(
                                                    children: <Widget>[
                                                      Container(
                                                        alignment:
                                                            Alignment.center,
                                                        padding:
                                                            const EdgeInsets
                                                                .all(0),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              new BorderRadius
                                                                      .circular(
                                                                  24.0),
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
                                      const Padding(
                                        padding: EdgeInsets.only(left: 35),
                                        child: Text(
                                          'Danse thérapie',
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
                                      const Padding(
                                        padding: EdgeInsets.only(left: 35),
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
                              const Padding(
                                padding: EdgeInsets.only(left: 50),
                                child: Text(
                                  'MEDITATION ET EXERCICES DE RESPIRATION',
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
                                        child: SizedBox(
                                            height: 175.0,
                                            child: GestureDetector(
                                              onTap: () {},
                                              child: FittedBox(
                                                child: Material(
                                                  color: AppColors.clicColor,
                                                  elevation: 10.0,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  shadowColor:
                                                      AppColors.clicColor,
                                                  child: Column(
                                                    children: <Widget>[
                                                      Container(
                                                        alignment:
                                                            Alignment.center,
                                                        padding:
                                                            const EdgeInsets
                                                                .all(0),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              new BorderRadius
                                                                      .circular(
                                                                  24.0),
                                                          child: Image.asset(
                                                            "assets/5.png",
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
                                      const Padding(
                                        padding: EdgeInsets.only(left: 35),
                                        child: Text(
                                          'Méditation',
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
                                      const Padding(
                                        padding: EdgeInsets.only(left: 35),
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
                                        child: SizedBox(
                                            height: 175.0,
                                            child: GestureDetector(
                                              onTap: () {},
                                              child: FittedBox(
                                                child: Material(
                                                  color: AppColors.clicColor,
                                                  elevation: 10.0,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  shadowColor:
                                                      AppColors.clicColor,
                                                  child: Column(
                                                    children: <Widget>[
                                                      Container(
                                                        alignment:
                                                            Alignment.center,
                                                        padding:
                                                            const EdgeInsets
                                                                .all(0),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              new BorderRadius
                                                                      .circular(
                                                                  24.0),
                                                          child: Image.asset(
                                                            "assets/6.png",
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
                                      const Padding(
                                        padding: EdgeInsets.only(left: 35),
                                        child: Text(
                                          'Respiration',
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
                                      const Padding(
                                        padding: EdgeInsets.only(left: 35),
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
                            ]),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                ],
              ),
            )
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
      selectionTextStyle: const TextStyle(color: Colors.black),
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
              borderRadius: const BorderRadius.all(Radius.circular(6.0)),
              gradient: const LinearGradient(colors: [
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
                      MaterialPageRoute(builder: (_) => const FindDoctor()));
                },
                child: const Center(
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
              borderRadius: const BorderRadius.all(Radius.circular(6.0)),
              gradient: const LinearGradient(colors: [
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
                      const Text(
                        'Trouble de l\'alimentation',
                        style: TextStyle(
                          fontFamily: 'Calluna',
                          color: Colors.black,
                          fontSize: 18,
                          //  fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'Ajouté il y a 2 heures',
                        style: TextStyle(
                          fontFamily: 'Calluna',
                          color: AppColors.textColor,
                          fontSize: 15,
                          //  fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 60),
                      Row(
                        children: [
                          const SizedBox(
                            width: 50,
                          ),
                          const Text(
                            'Sévérité',
                            style: TextStyle(
                              fontFamily: 'Calluna',
                              color: AppColors.textColor,
                              fontSize: 15,
                              //  fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 40),
                          Container(
                            width: 10,
                            height: 10,
                            child: const Text(''),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black),
                          ),
                          const SizedBox(width: 5),
                          Container(
                            width: 10,
                            height: 10,
                            child: const Text(''),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black),
                          ),
                          const SizedBox(width: 5),
                          Container(
                            width: 10,
                            height: 10,
                            child: const Text(''),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black),
                          ),
                          const SizedBox(width: 5),
                          Container(
                            width: 10,
                            height: 10,
                            child: const Text(''),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black),
                          ),
                          const SizedBox(width: 5),
                          Container(
                            width: 10,
                            height: 10,
                            child: const Text(''),
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
            decoration: const BoxDecoration(
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
                child: const Center(
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
