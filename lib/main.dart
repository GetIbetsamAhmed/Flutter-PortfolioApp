import 'package:flutter/material.dart';
//import 'screens/homePage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioapp/screens/HomePage.dart';

//import 'smartWidgets/smartWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        platform: TargetPlatform.android,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
      ),
      //title: "Task No 3",
      home: const Screen1(),
    );
  }
}
