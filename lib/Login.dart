import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Sign_In.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(children: [
          Container(
            color: Colors.pink,
          ),
          Container(
            alignment: Alignment(0.0, -0.49),
            color: Colors.purple,
            width: 400,
            height: 400,
            child: Text(
              'are you ready',
              textAlign: TextAlign.center,
              style: GoogleFonts.dancingScript(
                textStyle: TextStyle(
                  fontSize: 64,
                  fontWeight: FontWeight.w700,
                  color: Colors.purple.shade300,
                ),
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('img/Icecream.png'),
              ),
            ),
          ),
          Container(),
          Container(
            alignment: Alignment(-0.9, 0.7),
            child: ElevatedButton(
                onPressed: () {
                  print('hell0');
                },
                child: Text('Login', style: TextStyle(fontSize: 20)),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.only(
                      top: 20.0, right: 60.0, bottom: 20.0, left: 60.0),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  ),
                )),
          ),
          Container(
            alignment: Alignment(0.9, 0.7),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Sign_In()),
                  );
                },
                child: Text('Sign In', style: TextStyle(fontSize: 20)),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.only(
                      top: 20.0, right: 60.0, bottom: 20.0, left: 60.0),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  ),
                )),
          ),
        ]),
      ),
    );
  }
}
