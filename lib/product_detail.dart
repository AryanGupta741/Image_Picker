import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icebuddy/homescreen.dart';

class product_detail extends StatelessWidget {
  const product_detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade100 ,
      appBar: AppBar(
        backgroundColor: Colors.pink.shade100,
        leading: IconButton(onPressed: (){
           Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const homeScreen()),
  );
        }, icon: Icon(Icons.arrow_back,
        color: Colors.black, )),
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}
          , icon: Icon(Icons.shopping_cart,
          color: Colors.black,))
        ],
      ),
     body: Column(children: [
       Container(
         height: MediaQuery.of(context).size.height * .4,
         width: double.infinity,
         padding: const EdgeInsets.only(bottom: 20),
         child: Image.asset('img/icecream3.jpg'),
       ),
       Expanded(child: Stack(
         children: [
           Container(
            padding: EdgeInsets.only(top:40,right:14, left: 14),
             decoration: const BoxDecoration(color: Colors.white,
             borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30)
             )),
             child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                
                  const Text('chanel',
                  style: TextStyle(fontSize: 18,
                  color: Colors.grey),),
                  Row(                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                          Text('Product_Name',
                              style: GoogleFonts.poppins(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                              )),
                      Text('\$135.00',
                       style: GoogleFonts.poppins(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),),
                    ],
                  ),
                  const SizedBox(height: 15 ),
                  Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s',
                  style: GoogleFonts.poppins(
                        fontSize: 15,
                     color: Colors.grey,
                      ), ),
                      const SizedBox(height: 10,),
                      Text('Simlar This',
                       style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),)
                ],
               ),
           ),
           Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              width: 60,
              height: 5,
              decoration: BoxDecoration(color: Colors.grey,
              borderRadius: BorderRadius.circular(50)),
            )
           )
         ],
       ),),
     ]),
     bottomNavigationBar: Container(
      height: 60, 
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
          Container(
            width: 50,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey)
            ),
            child: Icon(Icons.favorite_outline,
            size: 35,
            color: Colors.grey,),
          ),
          const SizedBox(width: 20,),
                 Expanded(
         child: InkWell(
          onTap:() {},
            
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
                
              ),
              child: Text('+Add to Cart',
              style: GoogleFonts.poppins(fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white),),
            ),
             
         ),
       )
      ]),
     ),
    );
  }
}