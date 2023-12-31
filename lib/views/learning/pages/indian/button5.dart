import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sign_vision/utils/colors.dart';
import 'package:sign_vision/views/learning/pages/indian/Alphabets/alphabets_5.dart';
import 'package:sign_vision/views/learning/pages/indian/Numbers/numbers_n5.dart';
import '../../../hom_page/learnerpage.dart';

class AslButton5 extends StatelessWidget {
  const AslButton5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.kblueColor,
        elevation: 0,
        leading: IconButton(onPressed: ()=>Get.to(Learning()), icon: Icon(Icons.arrow_back,color: Colors.white,)),
      ),
      backgroundColor: MyColors.kblueColor,
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [

          GestureDetector(
            onTap: () => Navigator.pushReplacement(context, (MaterialPageRoute(builder: (context)=> IndianAlpabhabets()))),
            child: Container(width: double.infinity,
              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Albhabets",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 21, letterSpacing: 1.1),
                        ),
                      ],
                    ),
                    height: 50,
                    width: 280,
                  ),

                  SizedBox(height: 50),

                  GestureDetector(
                    onTap: () => Navigator.pushReplacement(context, (MaterialPageRoute(builder: (context)=> IndianNumbers()))),

                    child: Container(
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Numbers",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 21, letterSpacing: 1.1),
                          ),
                        ],
                      ),
                      height: 50,
                      width: 280,
                    ),
                  ),
                ],
              ),
            ),
          ),


        ],
      ),
    );
  }
}