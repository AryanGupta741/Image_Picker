import 'dart:async';
// import 'package:application/Sign_In.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Login.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
   @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Login(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('img/bubble.jpg'), fit: BoxFit.cover),
          
        ),
        child: Center(
            child: Text(
          'IceBuddy',
          style: GoogleFonts.dancingScript(
            textStyle: TextStyle(
              fontSize: 64,
              fontWeight: FontWeight.w700,
              color: Colors.purple.shade300,
            ),
          ),
        )),
      ),
    );
  }
}

