// import 'package:application/Login.dart';
// import 'package:application/product_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icebuddy/product_detail.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //
        // ),
        appBar: AppBar(
          title: Text('IceBuddy',
              style: TextStyle(
                fontSize: 25,
              )),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.add_shopping_cart_sharp),
              tooltip: 'Comment Icon',
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.account_circle_rounded),
              tooltip: 'Comment Icon',
              onPressed: () {},
            ),
          ], //action
          backgroundColor: Colors.pink[200],
          elevation: 50.0,
        ),
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                ), //BoxDecoration
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.pinkAccent),
                  accountName: Text(
                    "User Name",
                    style: TextStyle(fontSize: 18),
                  ),
                  accountEmail: Text("Email@gmail.com"),
                  currentAccountPictureSize: Size.square(50),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 165, 255, 137),
                    child: Text(
                      "A",
                      style: TextStyle(fontSize: 30.0, color: Colors.blue),
                    ), //Text
                  ), //circleAvatar
                ), //UserAccountDrawerHeader
              ), //DrawerHeader
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text(' My Profile '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.book),
                title: const Text(' My Course '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.workspace_premium),
                title: const Text(' Go Premium '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.video_label),
                title: const Text(' Saved Videos '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.edit),
                title: const Text(' Edit Profile '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('LogOut'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                CarouselSlider(
                  items: [
                    Container(
                      child: Image.asset('img/banner1.png'),
                    ),
                    Container(
                      child: Image.asset('img/banner2.png'),
                    ),
                    Container(
                      child: Image.asset('img/banner3.png'),
                    ),
                    Container(
                      child: Image.asset('img/banner4.png'),
                    ),
                    Container(
                      child: Image.asset('img/banner5.png'),
                    ),
                  ],
                  options: CarouselOptions(
                    height: 180.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                ),
                Divider(
                  color: Colors.red,
                  height: 50,
                  thickness: 2.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: 0, right: 10, top: 20, left: 160),
                  child: Text(
                    'This is',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: 10, right: 0, top: 0, left: 100),
                  child: Text(
                    'Summer offer',
                    style: GoogleFonts.playfairDisplay(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.black,
                                  ),
                                ),
                                child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => product_detail()));
                                    },
                                    child: Image.asset('img/Icecream.png'))),
                          ),
                          Positioned(
                            top: 110,
                            child: Text(
                              'pistachio',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          Positioned(
                            top: 135,
                            left: 20,
                            child: Text(
                              'With Fruits',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 10),
                            ),
                          ),
                          Positioned(
                            top: 15,
                            left: 50,
                            child: Text(
                              'Shop Now',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Positioned(
                            top: 135,
                            left: 100,
                            child: Text(
                              'Rs.45',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                        ]),
                        Stack(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.black,
                                  ),
                                ),
                                child: Image.asset('img/Icecream.png')),
                          ),
                          Positioned(
                            top: 110,
                            child: Text(
                              'pistachio',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          Positioned(
                            top: 135,
                            left: 20,
                            child: Text(
                              'With Fruits',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 10),
                            ),
                          ),
                          Positioned(
                            top: 15,
                            left: 50,
                            child: Text(
                              'Shop Now',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Positioned(
                            top: 135,
                            left: 100,
                            child: Text(
                              'Rs.45',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                        ]),
                        Stack(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.black,
                                  ),
                                ),
                                child: Image.asset('img/Icecream.png')),
                          ),
                          Positioned(
                            top: 110,
                            child: Text(
                              'pistachio',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          Positioned(
                            top: 135,
                            left: 20,
                            child: Text(
                              'With Fruits',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 10),
                            ),
                          ),
                          Positioned(
                            top: 15,
                            left: 50,
                            child: Text(
                              'Shop Now',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Positioned(
                            top: 135,
                            left: 100,
                            child: Text(
                              'Rs.45',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                        ]),
                        Stack(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.black,
                                  ),
                                ),
                                child: Image.asset('img/Icecream.png')),
                          ),
                          Positioned(
                            top: 110,
                            child: Text(
                              'pistachio',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          Positioned(
                            top: 135,
                            left: 20,
                            child: Text(
                              'With Fruits',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 10),
                            ),
                          ),
                          Positioned(
                            top: 15,
                            left: 50,
                            child: Text(
                              'Shop Now',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Positioned(
                            top: 135,
                            left: 100,
                            child: Text(
                              'Rs.45',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                        ]),
                        Stack(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.black,
                                  ),
                                ),
                                child: Image.asset('img/Icecream.png')),
                          ),
                          Positioned(
                            top: 110,
                            child: Text(
                              'pistachio',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          Positioned(
                            top: 135,
                            left: 20,
                            child: Text(
                              'With Fruits',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 10),
                            ),
                          ),
                          Positioned(
                            top: 15,
                            left: 50,
                            child: Text(
                              'Shop Now',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Positioned(
                            top: 135,
                            left: 100,
                            child: Text(
                              'Rs.45',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Stack(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.white,
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.black,
                                    ),
                                  ),
                                  child: Image.asset('img/Icecream.png')),
                            ),
                            Positioned(
                              top: 110,
                              child: Text(
                                'pistachio',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            Positioned(
                              top: 135,
                              left: 20,
                              child: Text(
                                'With Fruits',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 10),
                              ),
                            ),
                            Positioned(
                              top: 15,
                              left: 50,
                              child: Text(
                                'Shop Now',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                            Positioned(
                              top: 135,
                              left: 100,
                              child: Text(
                                'Rs.45',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                          ]),
                          Stack(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.white,
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.black,
                                    ),
                                  ),
                                  child: Image.asset('img/Icecream.png')),
                            ),
                            Positioned(
                              top: 110,
                              child: Text(
                                'pistachio',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            Positioned(
                              top: 135,
                              left: 20,
                              child: Text(
                                'With Fruits',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 10),
                              ),
                            ),
                            Positioned(
                              top: 15,
                              left: 50,
                              child: Text(
                                'Shop Now',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                            Positioned(
                              top: 135,
                              left: 100,
                              child: Text(
                                'Rs.45',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                          ]),
                          Stack(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.white,
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.black,
                                    ),
                                  ),
                                  child: Image.asset('img/Icecream.png')),
                            ),
                            Positioned(
                              top: 110,
                              child: Text(
                                'pistachio',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            Positioned(
                              top: 135,
                              left: 20,
                              child: Text(
                                'With Fruits',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 10),
                              ),
                            ),
                            Positioned(
                              top: 15,
                              left: 50,
                              child: Text(
                                'Shop Now',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                            Positioned(
                              top: 135,
                              left: 100,
                              child: Text(
                                'Rs.45',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                          ]),
                          Stack(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.white,
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.black,
                                    ),
                                  ),
                                  child: Image.asset('img/Icecream.png')),
                            ),
                            Positioned(
                              top: 110,
                              child: Text(
                                'pistachio',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            Positioned(
                              top: 135,
                              left: 20,
                              child: Text(
                                'With Fruits',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 10),
                              ),
                            ),
                            Positioned(
                              top: 15,
                              left: 50,
                              child: Text(
                                'Shop Now',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                            Positioned(
                              top: 135,
                              left: 100,
                              child: Text(
                                'Rs.45',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                          ]),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(children: [
                        Container(
                            height: 140,
                            width: 400,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: Colors.pinkAccent),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18)),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(right: 230),
                            )),
                        Positioned(
                          top: 20,
                          left: 20,
                          child: Image.asset(
                            'img/icecream2.jpg',
                            height: 110,
                          ),
                        ),
                        Container(
                          height: 8,
                          width: 10,
                          color: Colors.white10,
                        ),
                        Positioned(
                            top: 20,
                            left: 124,
                            child: Text('Assorted Scooped',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25))),
                        Positioned(
                            top: 42,
                            left: 124,
                            child: Text('Ice Cream',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19))),
                        Positioned(
                            top: 64,
                            left: 124,
                            child: Text('Combo of 6 Different Scoops',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15))),
                        Positioned(
                            top: 94,
                            left: 124,
                            child: Text('Rs.600',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19))),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(children: [
                        Container(
                            height: 140,
                            width: 400,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: Colors.pinkAccent),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18)),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(right: 230),
                            )),
                        Positioned(
                          top: 20,
                          left: 20,
                          child: Image.asset(
                            'img/icecream2.jpg',
                            height: 110,
                          ),
                        ),
                        Container(
                          height: 8,
                          width: 10,
                          color: Colors.white10,
                        ),
                        Positioned(
                            top: 20,
                            left: 124,
                            child: Text('Assorted Scooped',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25))),
                        Positioned(
                            top: 42,
                            left: 124,
                            child: Text('Ice Cream',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19))),
                        Positioned(
                            top: 64,
                            left: 124,
                            child: Text('Combo of 6 Different Scoops',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15))),
                        Positioned(
                            top: 94,
                            left: 124,
                            child: Text('Rs.600',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19))),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(children: [
                        Container(
                            height: 140,
                            width: 400,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: Colors.pinkAccent),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18)),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(right: 230),
                            )),
                        Positioned(
                          top: 20,
                          left: 20,
                          child: Image.asset(
                            'img/icecream2.jpg',
                            height: 110,
                          ),
                        ),
                        Container(
                          height: 8,
                          width: 10,
                          color: Colors.white10,
                        ),
                        Positioned(
                            top: 20,
                            left: 124,
                            child: Text('Assorted Scooped',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25))),
                        Positioned(
                            top: 42,
                            left: 124,
                            child: Text('Ice Cream',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19))),
                        Positioned(
                            top: 64,
                            left: 124,
                            child: Text('Combo of 6 Different Scoops',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15))),
                        Positioned(
                            top: 94,
                            left: 124,
                            child: Text('Rs.600',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19))),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(children: [
                        Container(
                            height: 140,
                            width: 400,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: Colors.pinkAccent),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18)),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(right: 230),
                            )),
                        Positioned(
                          top: 20,
                          left: 20,
                          child: Image.asset(
                            'img/icecream2.jpg',
                            height: 110,
                          ),
                        ),
                        Container(
                          height: 8,
                          width: 10,
                          color: Colors.white10,
                        ),
                        Positioned(
                            top: 20,
                            left: 124,
                            child: Text('Assorted Scooped',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25))),
                        Positioned(
                            top: 42,
                            left: 124,
                            child: Text('Ice Cream',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19))),
                        Positioned(
                            top: 64,
                            left: 124,
                            child: Text('Combo of 6 Different Scoops',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15))),
                        Positioned(
                            top: 94,
                            left: 124,
                            child: Text('Rs.600',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19))),
                      ]),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
