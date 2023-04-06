// import 'package:application/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'homescreen.dart';

class Sign_In extends StatefulWidget {
  const Sign_In({super.key});

  @override
  State<Sign_In> createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'img/Icecream.png',
            height: 300,
            width: 300,
          ),

          SizedBox(
            width: 0,
            height: 0,
          ),

          Container(
              margin: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Enter Name',
                  hintText: 'Enter Your Name',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  prefixIcon: Icon(Icons.account_circle_rounded
                      // color: Colors.white,
                      ),
                ),
              )),
          Container(
            margin: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Enter Password',
                hintText: 'Enter Your Password',
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                prefixIcon: Icon(
                  Icons.admin_panel_settings_sharp,
                  // color: Colors.white,
                ),
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 240.0, right: 0.0, top: 0.0, bottom: 0.0),
          Container(
            margin:
                EdgeInsets.only(left: 240.0, right: 0.0, top: 0.0, bottom: 0.0),
            child: Text(
              "Forget Password",
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 85.0, top: 10.0),
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton(
                  onPressed: null,
                  tooltip: 'Facebook',
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                  hoverColor: Colors.pink,
                  child: Icon(Icons.facebook),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton(
                  onPressed: null,
                  tooltip: 'Facebook',
                  backgroundColor: Colors.pink.shade200,
                  foregroundColor: Colors.white,
                  hoverColor: Colors.pink,
                  child: Icon(Icons.facebook),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton(
                  onPressed: null,
                  tooltip: 'Facebook',
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  hoverColor: Colors.pink,
                  child: Icon(Icons.facebook),
                ),
              )
            ]),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
              width: 160,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const homeScreen()),
                  // );
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.pink.shade100,
                    shape: new RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    )),
                child: Text(
                  'Start',
                  style: TextStyle(
                    fontSize: 34,
                    color: Colors.black,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
