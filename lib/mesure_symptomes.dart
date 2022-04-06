import 'dart:async';
import 'package:demo_hackathon/colors.dart';
import 'package:demo_hackathon/login_non_diag/DoctorMap.dart';
import 'package:demo_hackathon/mesurer_symptomes_questionnaire.dart';
import 'package:demo_hackathon/pages/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/link.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class MesureSymptome extends StatefulWidget {
  @override
  _MesureSymptomeState createState() => _MesureSymptomeState();
}

class _MesureSymptomeState extends State<MesureSymptome>
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
          'MESURER',
          style: TextStyle(
            fontFamily: 'Calluna', color: AppColors.textColor,
            fontSize: 20.0,
            //   fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: AppColors.clicColor,
        leading: IconButton(
          padding: EdgeInsets.only(left: 30),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/register');
          },
          icon: Icon(Icons.settings),
          color: AppColors.textColor,
          iconSize: 30,
        ),
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
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 60,
                                child: ClipRRect(
                                  borderRadius: new BorderRadius.circular(14.0),
                                  child: SvgPicture.asset(
                                    'assets/LOGOseul.svg',
                                    height: 150,
                                    width: 150,
                                    color: AppColors.illustationColor,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Bonjour Sophie,',
                              style: TextStyle(
                                fontFamily: 'Calluna',
                                color: AppColors.textColor,
                                fontSize: 25.0,
                                //   fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Quoi de neuf aujourd\'hui ?',
                              style: TextStyle(
                                fontFamily: 'Calluna',
                                color: AppColors.textColor,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w200,
                                //   fontWeight: FontWeight.bold,
                              ),
                            ),
                            // Align(
                            //   alignment: Alignment.center,
                            //   child: Padding(
                            //     padding: const EdgeInsets.all(8.0),
                            //     child: Container(
                            //         child: GestureDetector(
                            //       onTap: () {},
                            //       child: FittedBox(
                            //         child: Material(
                            //           color: Colors.white,
                            //           elevation: 14.0,
                            //           borderRadius: BorderRadius.circular(14.0),
                            //           shadowColor: Color(0x802196F3),
                            //           child: Column(
                            //             children: <Widget>[
                            //               Container(
                            //                 padding: EdgeInsets.all(8),
                            //                 child: Text(
                            //                   'ex2',
                            //                   style: TextStyle(
                            //                     color: Colors.black,
                            //                     fontSize: 15.0,
                            //                     fontWeight: FontWeight.w500,
                            //                   ),
                            //                 ),
                            //               ),
                            //               // Container(
                            //               //   width: 285,
                            //               //   height: 190,
                            //               //   child: ClipRRect(
                            //               //     borderRadius:
                            //               //         new BorderRadius.circular(14.0),
                            //               //     child: Image(
                            //               //       // fit: BoxFit.fill,
                            //               //       alignment: Alignment.topCenter,
                            //               //       image: AssetImage(
                            //               //           "assets/NewPat.gif"),
                            //               //     ),
                            //               //   ),
                            //               // ),
                            //               // Container(
                            //               //   child: myDetailsContainer2(),
                            //               // ),
                            //             ],
                            //           ),
                            //         ),
                            //       ),
                            //     )),
                            //   ),
                            // ),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
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
                                          alignment: Alignment.center,
                                          padding: EdgeInsets.all(18),
                                          child: Text(
                                            'Vos symptômes nous sont\n nécessaire pour vous proposer du\n contenu de santé personnalisé.',
                                            style: TextStyle(
                                              fontFamily: 'Calluna',
                                              color: AppColors.textColor,
                                              fontSize: 14.0,
                                              // fontWeight: FontWeight.w500,red
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        Container(
                                          child: myDetailsContainer1(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )),
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            Text(
                              'Vos derniers symptômes',
                              style: TextStyle(
                                fontFamily: 'Calluna',
                                color: AppColors.textColor,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w200,
                                //   fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                child: FittedBox(
                                  child: Material(
                                    color: AppColors.backgroundColor,
                                    elevation: 14.0,
                                    borderRadius: BorderRadius.circular(24.0),
                                    shadowColor: AppColors.clicColor,
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          child: myDetailsContainer5(),
                                        ),
                                        Container(
                                          //color: AppColors.pictoColor,
                                          width: 50,
                                          height: 50,
                                          child: ClipRRect(
                                            borderRadius:
                                                new BorderRadius.circular(24.0),
                                            child: IconButton(
                                              onPressed: () {
                                                Navigator.pushReplacementNamed(
                                                    context, '/ocular_part');
                                              },
                                              icon: Icon(Icons.info),
                                              color: AppColors.pictoColor,
                                              iconSize: 35,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Divider(
                              color: AppColors.textColor,
                              height: 15.0,
                              thickness: 0.5,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Suivi',
                              style: TextStyle(
                                fontFamily: 'Calluna',
                                color: AppColors.textColor,
                                fontSize: 20.0,

                                //   fontWeight: FontWeight.bold,
                              ),
                            ),
                            PeriodCalendar(),
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
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (_) => QuestionnaireSymptomes()));
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
