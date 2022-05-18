import 'package:chat_app_using_firebase/src/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Google_Fonts',
        textTheme: TextTheme(
          bodyText2: GoogleFonts.macondo(
              color: Colors.black,
              fontSize: 22,
              letterSpacing: -1.5
          ),
        ),
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}