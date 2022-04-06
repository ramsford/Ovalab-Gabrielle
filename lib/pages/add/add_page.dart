import 'package:demo_hackathon/pages/dashboard/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:demo_hackathon/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class CommunicateScreen extends StatefulWidget {
  const CommunicateScreen({Key? key}) : super(key: key);

  @override
  State<CommunicateScreen> createState() => _CommunicateScreenState();
}

class _CommunicateScreenState extends State<CommunicateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ChildBody(),
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (_) => MyDashBoard()));
              },
              icon: const Icon(Icons.arrow_back_ios)),
          centerTitle: true,
          title: Text(
            "COMMUNIQUER",
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColors.textColor, fontFamily: 'Calluna'),
          ),
          backgroundColor: AppColors.clicColor,
        ));
  }
}

class ChildBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Image.asset(
            "assets/5.png",
            height: 275,
            width: 275,
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Container(
                child: GestureDetector(
              onTap: () {},
              child: FittedBox(
                child: Material(
                  color: AppColors.pictoColor,
                  elevation: 10.0,
                  borderRadius: BorderRadius.circular(10.0),
                  shadowColor: AppColors.clicColor,
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(18),
                        child: Text(
                          "Inviter un professionnel de santé\n que je connais",
                          style: TextStyle(
                            fontFamily: 'Calluna',
                            color: AppColors.backgroundColor,
                            fontSize: 20.0,
                            // fontWeight: FontWeight.w500,red
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )),
          ),
          const SizedBox(height: 30),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Container(
                  child: GestureDetector(
                onTap: () {},
                child: FittedBox(
                  child: Material(
                    color: AppColors.pictoColor,
                    elevation: 10.0,
                    borderRadius: BorderRadius.circular(10.0),
                    shadowColor: AppColors.clicColor,
                    child: Column(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(18),
                          child: Text(
                            "Chercher un professionnel de santé",
                            style: TextStyle(
                              fontFamily: 'Calluna',
                              color: AppColors.backgroundColor,
                              fontSize: 20.0,
                              // fontWeight: FontWeight.w500,red
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
            ),
            // child: SizedBox(
            //   height: 70,
            //   width: 300,
            //   child: TextButton(
            //       style: TextButton.styleFrom(
            //           backgroundColor: AppColors.pictoColor),
            //       onPressed: () {},
            //       child: Text("Chercher un professionnel de santé",
            //           textAlign: TextAlign.center,
            //           style: TextStyle(
            //               color: AppColors.backgroundColor,
            //               fontFamily: "Calluna",
            //               fontSize: 20))),
            // ),
          ),
          const SizedBox(height: 30),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Container(
                  child: GestureDetector(
                onTap: () {
                  launch('https://www.lesnatives.fr/');
                },
                child: FittedBox(
                  child: Material(
                    color: AppColors.pictoColor,
                    elevation: 10.0,
                    borderRadius: BorderRadius.circular(10.0),
                    shadowColor: AppColors.clicColor,
                    child: Column(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(18),
                          child: Text(
                            "Discussion entre Natives",
                            style: TextStyle(
                              fontFamily: 'Calluna',
                              color: AppColors.backgroundColor,
                              fontSize: 20.0,
                              // fontWeight: FontWeight.w500,red
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
