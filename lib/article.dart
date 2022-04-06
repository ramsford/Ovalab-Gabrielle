import 'dart:async';
import 'package:demo_hackathon/app_description.dart';
import 'package:demo_hackathon/login_non_diag/information_non_diag.dart';
import 'package:demo_hackathon/login_non_diag/questionnaire.dart';
import 'package:demo_hackathon/pages/messages/messages_page.dart';
import 'package:demo_hackathon/register_and_connexion.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import '../pages/dashboard/dashboard.dart';
import 'package:demo_hackathon/colors.dart';

class ArticleScreen extends StatefulWidget {
  const ArticleScreen({Key? key}) : super(key: key);

  @override
  State<ArticleScreen> createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ChildBody(),
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          backgroundColor: AppColors.backgroundColor,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (_) => MyDashBoard()));
              },
              icon: const Icon(Icons.arrow_back_ios)),
        ));
  }
}

class ChildBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.transparent,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Center(
                      child: Image.asset('assets/article.jpg',
                          height: 250, width: 250)),
                  const Text(
                    "\nMETFORMINE ET SOPK – CE QUE NOUS DIT LA SCIENCE ET QUE VOUS DEVEZ ABSOLUMENT SAVOIR\n\nLa metformine est utilisée depuis la fin du XXème siècle pour normaliser l’activité ovarienne et promouvoir la perte de poids chez les femmes souffrant du SOPK, en raison de son action sur la sensibilité à l’insuline et sur les taux de testostérone.\n Certaines d’entre vous ont pris ou prennent ce médicament.\n Cependant, selon les dernières études scientifiques, la metformine ne serait plus considérée comme un médicament utile pour les patientes souffrant du SOPK et souhaitant tomber enceinte et/ou perdre du poids.\n Dans cet article, nous résumons pour vous ce que nous dit la science au sujet de la metformine dans le traitement des symptômes du SOPK.\n\n",
                    style: TextStyle(fontFamily: 'Calluna', fontSize: 16),
                  ),
                ],
              ),
            ), //Text(),
          ],
        ),
      ),
    );
  }
}
