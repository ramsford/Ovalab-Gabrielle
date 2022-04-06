import 'dart:ui';

import 'package:demo_hackathon/login_non_diag/questionnaire.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:path/path.dart';

class InformationNonDiag extends StatefulWidget {
  InformationNonDiag({
    Key? key,
  }) : super(key: key);
  @override
  _InformationNonDiagState createState() => _InformationNonDiagState();
}

class _InformationNonDiagState extends State<InformationNonDiag> {
  late PageController _pageController;
  int currentIndex = 0;
  // var myGroup = AutoSizeGroup();
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              'SKIP',
              style: TextStyle(
                color: Color.fromARGB(255, 159, 183, 255),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 10,
            ),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (_) => Questionnaire()));
              },
              icon: Icon(
                Icons.arrow_forward_rounded,
                size: 25,
              ),
              color: Color.fromARGB(255, 159, 183, 255),
            ),
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          PageView(
            //scrollDirection: Axis.vertical,
            onPageChanged: (int page) {
              setState(() {
                currentIndex = page;
              });
            },
            controller: _pageController,
            children: <Widget>[
              makePage(
                image: 'assets/OVA.png',
                title: "Organiser mes photos",
                content1:
                    "Une fois le tutoriel terminé, vous devrez créer un profil pour regrouper les images correspondant à cette personne.",
                content2:
                    "Une fois le profil créer, vous aurez la possibilité d'enregistrer des éléments: photo, description et détail si nécessaire. Vous ne pourrez enregistrer qu'une seule photo",
                space: 10,
                top1: 10,
              ),
              makePage(
                image: 'assets/OVA.png',
                title: "Ajouter",
                content1: "",
                content2:
                    "Pour ajouter des éléments à votre profil, vous devrez appuyer sur \"Ajouter une information\" dans votre profil, une fois créé et vous aurez ensuite la possibilité d'ajouter une photo, avec sa déscription et des détails si nécessaire.",
                space: 10,
                top1: 10,
              ),
              // makePage(
              //   image: 'assets/piece_sombre.jpg',
              //   title: LocaleKeys.text_tr_tu_op4.tr(),
              //   content1: '',
              //   //content2: LocaleKeys.text_tr_tu_op5.tr(),
              //   content2:
              //       "Vous devrez prendre une vidéo dans une pièce sombre et l'objectif de l'appareil photo doit être placé à environ 30-40 cm des yeux. Vouds devrez ensuite prendre la vidéo en partant de l'oeil gauche jusqu'à l'oeil droit de l'enfant et ce doucement",
              //   top1: 70,
              // ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
              bottom: 40,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildIndicator(),
            ),
          )
        ],
      ),
    );
  }

  Widget makePage({
    image,
    title,
    content1,
    content2,
    reverse = false,
    double? height1,
    double? width1,
    double? space,
    required double top1,
  }) {
    return Container(
      padding: EdgeInsets.only(
        left: 50,
        right: 50,
        bottom: 0,
        top: top1,
      ),
      child: Column(
        children: <Widget>[
          reverse
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: FittedBox(
                        clipBehavior: Clip.hardEdge,
                        child: Image(
                          image: AssetImage(image),
                          // fit: BoxFit.fitHeight,
                          height: height1,
                          width: width1,
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: 30,
                    // ),
                  ],
                )
              : SizedBox(),
          Text(
            content1,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 19,
              fontWeight: FontWeight.w400,
            ),
            // stepGranularity: 5,
            // maxLines: 7,
            // minFontSize: 12,
            // group: myGroup,
          ),
          SizedBox(
            height: space,
          ),
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            // stepGranularity: 1,
            // maxLines: 1,
            // minFontSize: 20,
            //group: myGroup,
            // maxLines: 5,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            content2,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            //  stepGranularity: 5,
            // minFontSize: 12,
            // //group: myGroup,
            // maxLines: 13,
          ),
          !reverse
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: FittedBox(
                        clipBehavior: Clip.hardEdge,
                        child: Image(
                          image: AssetImage(image),
                          //fit: BoxFit.fitHeight,
                          height: height1,
                          width: width1,
                        ),
                      ),
                    ),
                  ],
                )
              : SizedBox(),
        ],
      ),
    );
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: 8,
      width: isActive ? 30 : 8,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 159, 183, 255),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indactors = [];
    for (int i = 0; i < 5; i++) {
      if (currentIndex == i) {
        indactors.add(_indicator(true));
      } else {
        indactors.add(_indicator(false));
      }
    }
    return indactors;
  }
}
