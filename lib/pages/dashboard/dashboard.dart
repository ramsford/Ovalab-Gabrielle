import 'package:demo_hackathon/colors.dart';
import 'package:demo_hackathon/mesure_symptomes.dart';
import 'package:demo_hackathon/pages/add/add_page.dart';
import 'package:demo_hackathon/pages/home/home_page.dart';
import 'package:demo_hackathon/pages/messages/messages_page.dart';
import 'package:demo_hackathon/pages/users/users_page.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import '../../navigation.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    //urlImage = "";

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromARGB(255, 159, 183, 255),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 18, right: 15),
            child: Text(
              'Login',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 159, 183, 255),
      body: ListView(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(top: 8.0, left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 125.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[],
                    ),
                  )
                ],
              )),
          SizedBox(
            height: 5.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              children: <Widget>[
                Text(
                  'OVALAB',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'App',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontSize: 25.0),
                ),
                SizedBox(
                  width: 30.0,
                ),
                Container(
                  height: 50,
                  child: ClipRRect(
                    borderRadius: new BorderRadius.circular(14.0),
                    child: Image.asset(
                      'assets/LOGOseul.svg',
                      height: 50,
                      width: 50,
                      scale: 1,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 40),
                child: Text(
                  'Clement',
                  // (utilisateurChoisie == "")
                  //     ? "${LocaleKeys.text_tr8.tr()}" ' $forname'
                  //     : "${LocaleKeys.text_tr8.tr()}" ' $utilisateurChoisie',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontSize: 18.0),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75)),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Container(
                    //color: Colors.white,
                    height: MediaQuery.of(context).size.height,
                    child: ListView(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 50,
                            left: 5.0,
                            right: 0.0,
                            bottom: 30.0,
                          ),
                          child: InkWell(
                            onTap: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: Row(
                                    children: [
                                      // Hero(
                                      //   tag: 'assets/eyes2.jpg',
                                      //   child: Image(
                                      //     image: AssetImage('assets/eyes2.jpg'),
                                      //     fit: BoxFit.cover,
                                      //     height: 90.0,
                                      //     width: 90.0,
                                      //   ),
                                      // ),
                                      SizedBox(
                                        width: 15.0,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Exemple 1',
                                            // LocaleKeys.text_tr3.tr(),
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: 'Montserrat',
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            '5 min',
                                            style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              fontSize: 15.0,
                                              color: Colors.grey,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 5.0,
                            right: 0.0,
                            bottom: 20.0,
                          ),
                          child: InkWell(
                            onTap: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: Row(
                                    children: [
                                      // Hero(
                                      //   tag: 'assets/ears.jpg',
                                      //   child: Image(
                                      //     image: AssetImage(
                                      //       'assets/ears.jpg',
                                      //     ),
                                      //     fit: BoxFit.cover,
                                      //     height: 90.0,
                                      //     width: 90.0,
                                      //   ),
                                      // ),
                                      SizedBox(
                                        width: 15.0,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Exemple',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: 'Montserrat',
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            '10 min',
                                            style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              fontSize: 15.0,
                                              color: Colors.grey,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: FittedBox(
                              child: Material(
                                color: Color.fromARGB(255, 159, 183, 255),
                                elevation: 14.0,
                                borderRadius: BorderRadius.circular(24.0),
                                shadowColor: Color(0x802196F3),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      child: myDetailsContainer1(),
                                    ),
                                    Container(
                                      width: 330,
                                      height: 380,
                                      child: ClipRRect(
                                        borderRadius:
                                            new BorderRadius.circular(24.0),
                                        child: Image(
                                          fit: BoxFit.fill,
                                          alignment: Alignment.centerRight,
                                          image: NetworkImage(
                                              "https://thumbs.dreamstime.com/b/docteur-et-signe-patient-symbole-de-vecteur-d-isolement-sur-le-fond-blanc-concept-logo-134068020.jpg"),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget PeriodCalendar() {
    return SfDateRangePicker(
      backgroundColor: AppColors.backgroundColor,
      rangeSelectionColor: AppColors.clicColor,
      selectionColor: AppColors.clicColor,
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext ctx) {
        return AlertDialog(
          title: Text('EXEMPLE'
              // LocaleKeys.text_tr_10.tr(),
              ),
          content: Text('Text'
              // LocaleKeys.text_tr_11.tr(),
              ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }
}

Widget _buildTestItem(BuildContext context, String imgPath, String testName,
    String price, String pathNextPage) {
  return Padding(
    padding: EdgeInsets.only(
      left: 5.0,
      right: 0.0,
      bottom: 30.0,
    ),
    child: InkWell(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: [
                Hero(
                  tag: imgPath,
                  child: Image(
                    image: AssetImage(imgPath),
                    fit: BoxFit.cover,
                    height: 90.0,
                    width: 90.0,
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      testName,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      price,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15.0,
                        color: Colors.grey,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, pathNextPage);
            },
            icon: Icon(Icons.arrow_forward_ios),
            color: Colors.black,
          )
        ],
      ),
    ),
  );
}

Widget myDetailsContainer1() {
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
              color: Colors.white, fontSize: 26.0, fontWeight: FontWeight.bold),
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

class MyDashBoard extends StatefulWidget {
  @override
  _MyDashBoardState createState() => _MyDashBoardState();
}

class _MyDashBoardState extends State<MyDashBoard> {
  int _currentIndex = 0;

  final _inactiveColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null, body: getBody(), bottomNavigationBar: _buildBottomBar());
  }

  Widget _buildBottomBar() {
    return CustomAnimatedBottomBar(
      containerHeight: 70,
      backgroundColor: AppColors.backgroundColor,
      selectedIndex: _currentIndex,
      showElevation: true,
      itemCornerRadius: 24,
      curve: Curves.easeIn,
      onItemSelected: (index) => setState(() => _currentIndex = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: Icon(Icons.done),
          title: Text('Mesurer'),
          activeColor: AppColors.illustrationColor2,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.book),
          title: Text(
            'Comprendre',
            style: TextStyle(fontSize: 12),
          ),
          activeColor: AppColors.illustationColor,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.manage_accounts),
          title: Text(
            'Gérer',
            style: TextStyle(fontSize: 12),
          ),
          activeColor: AppColors.clicColor,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.person),
          title: Text(
            'Communiquer',
            style: TextStyle(fontSize: 11),
          ),
          activeColor: AppColors.textColor,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget getBody() {
    List<Widget> pages = [
      MesureSymptome(),
      Comprendre(),
      ManageScreen(),
      CommunicateScreen(),
    ];
    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );
  }
}
