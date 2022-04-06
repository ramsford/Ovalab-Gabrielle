import 'dart:async';
import 'package:demo_hackathon/login_non_diag/DoctorMap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../pages/dashboard/dashboard.dart';

class Diagnostic extends StatefulWidget {
  @override
  _DiagnosticState createState() => _DiagnosticState();
}

class _DiagnosticState extends State<Diagnostic>
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
        // title: Text(
        //   'OVALAB',
        //   style: TextStyle(
        //     color: Colors.black,
        //     fontSize: 50.0,
        //     fontWeight: FontWeight.bold,
        //   ),
        // ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.pushReplacementNamed(context, '/register');
        //   },
        //   icon: Icon(Icons.arrow_back),
        //   color: Colors.white,
        //   iconSize: 25,
        // ),
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 50,
                            child: ClipRRect(
                              borderRadius: new BorderRadius.circular(14.0),
                              child: Image.asset(
                                'assets/OVA.png',
                                height: 50,
                                width: 50,
                                scale: 0.1,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  child: GestureDetector(
                                onTap: () {},
                                child: FittedBox(
                                  child: Material(
                                    color: Colors.white,
                                    elevation: 14.0,
                                    borderRadius: BorderRadius.circular(14.0),
                                    shadowColor: Color(0x802196F3),
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          padding: EdgeInsets.all(8),
                                          child: Text(
                                            'ex2',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        // Container(
                                        //   width: 285,
                                        //   height: 190,
                                        //   child: ClipRRect(
                                        //     borderRadius:
                                        //         new BorderRadius.circular(14.0),
                                        //     child: Image(
                                        //       // fit: BoxFit.fill,
                                        //       alignment: Alignment.topCenter,
                                        //       image: AssetImage(
                                        //           "assets/NewPat.gif"),
                                        //     ),
                                        //   ),
                                        // ),
                                        Container(
                                          child: myDetailsContainer2(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                child: GestureDetector(
                              onTap: () {},
                              child: FittedBox(
                                child: Material(
                                  color: Colors.white,
                                  elevation: 14.0,
                                  borderRadius: BorderRadius.circular(14.0),
                                  shadowColor: Color(0x802196F3),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsets.all(8),
                                        child: Text(
                                          'ex3',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w500,
                                          ),
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
                color: Color(0xFF21BFBD),
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
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => FindDoctor()));
                },
                child: Center(
                  child: Text(
                    'ex4',
                    style: TextStyle(
                      color: Color(0xFF21BFBD),
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
                    'ex5',
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
