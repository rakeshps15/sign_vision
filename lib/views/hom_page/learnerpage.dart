import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_vision/utils/colors.dart';
import 'package:sign_vision/views/hom_page/home.dart';
import 'package:sign_vision/views/learning/pages/american/button.dart';
import 'package:sign_vision/views/learning/pages/australian/button.dart';
import 'package:sign_vision/views/learning/pages/british/button.dart';

class Learning extends StatefulWidget {
  const Learning({super.key});

  @override
  State<Learning> createState() => _LearningState();
}

class _LearningState extends State<Learning> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: MyColors.kblueColor,
      appBar: AppBar(
        leading: IconButton(onPressed: ()=>Get.to(HomePage()), icon: Icon(Icons.arrow_back)),),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 70, horizontal: 20),
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Language Learning',
                  style: GoogleFonts.robotoSlab(fontWeight: FontWeight.bold, fontSize: 30
                      , letterSpacing: 1.1, color: Colors.grey[200]),
                ),
              ],
            ),

            SizedBox(height: 120),

            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 5),
                        color: Theme.of(context).primaryColor.withOpacity(.4),
                        spreadRadius: 2,
                        blurRadius: 5,
                      )
                    ],
                  ),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pushReplacement(context, (MaterialPageRoute(builder: (context)=> AslButton1()))),
                        child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              // color: ,
                                shape: BoxShape.circle),
                            child:
                            Image.asset("asset/american.png", height: 90,)

                          //  Icon(
                          //   Icons.pan_tool_alt_sharp,
                          //   size: 70,
                          //   // color: Colors.white,
                          // ),

                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "American",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 21, letterSpacing: 1.1),
                      )
                    ],
                  ),
                  height: 170,
                  width: 170,
                ),

                SizedBox(width: 10),

                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 5),
                        color: Theme.of(context).primaryColor.withOpacity(.4),
                        spreadRadius: 2,
                        blurRadius: 5,
                      )
                    ],
                  ),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pushReplacement(context, (MaterialPageRoute(builder: (context)=> AslButton2()))),
                        child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              // color: ,
                                shape: BoxShape.circle),
                            child:
                            Image.asset("asset/british.png",height: 100,)


                          // Icon(
                          //   Icons.pan_tool_alt_sharp,
                          //   size: 70,
                          //   // color: Colors.white,
                          // ),
                        ),
                      ),
                      Text(
                        "British",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 21, letterSpacing: 1.1),
                      )
                    ],
                  ),
                  height: 170,
                  width: 170,
                )
              ],
            ),

            SizedBox(height: 40),

            Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 5),
                    color: Theme.of(context).primaryColor.withOpacity(.4),
                    spreadRadius: 2,
                    blurRadius: 5,
                  )
                ],
              ),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pushReplacement(context, (MaterialPageRoute(builder: (context)=> AslButton3()))),

                    child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          // color: ,
                            shape: BoxShape.circle),
                        child:
                        Image.asset("asset/inter.png", height: 110)


                      // Icon(
                      //   Icons.pan_tool_alt_sharp,
                      //   size: 70,
                      //   // color: Colors.white,
                      // ),
                    ),
                  ),
                  // SizedBox(height: 5),
                  Text(
                    "International",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21, letterSpacing: 1.1),
                  )
                ],
              ),
              height: 170,
              width: 170,
            )
          ],
        ),
      ),
    );
  }
}