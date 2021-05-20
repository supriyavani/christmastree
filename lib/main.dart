import 'package:christmastree/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'christmastree',
      theme: ThemeData(
       
      fontFamily: GoogleFonts.poppins().fontFamily
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

