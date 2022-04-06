import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:demo_hackathon/translations/codegen_loader.g.dart';
import 'splash_screen.dart';

//popuppouramelioration
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  return runApp(EasyLocalization(
    path: "assets/translations",
    supportedLocales: [
      Locale('en'),
      Locale('fr'),
    ],
    fallbackLocale: Locale('en'),
    assetLoader: CodegenLoader(),
    child: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
//   final List<CameraDescription>? cameras;
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.black));
    return MaterialApp(
      darkTheme: ThemeData(
        backgroundColor: Colors.black54,
        scaffoldBackgroundColor: Colors.black54,
        primaryColor: Colors.black,
      ),
      theme: ThemeData(
        primaryColor: Colors.white,
        primarySwatch: Colors.cyan,
      ),
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      locale: context.locale,
      title: 'App test',
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashScreen(),
      },
    );
  }
}
