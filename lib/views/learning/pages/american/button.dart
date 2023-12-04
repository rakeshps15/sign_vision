import 'package:flutter/material.dart';
import 'package:sign_vision/utils/colors.dart';
import 'package:sign_vision/views/learning/pages/american/alphabets/alphabets.dart';
import 'package:sign_vision/views/learning/pages/american/numbers/numbers.dart';

void main(){
  runApp(MaterialApp(home: AslButton1(),));
}

class AslButton1 extends StatelessWidget {
  const AslButton1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
      ),
      backgroundColor: MyColors.kblueColor,
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Container(width: double.infinity,
            child: Column(crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pushReplacement(context, (MaterialPageRoute(builder: (context)=> AmericanAlphabets()))),
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
                ),

                SizedBox(height: 50),

                GestureDetector(
                  onTap: () => Navigator.pushReplacement(context, (MaterialPageRoute(builder: (context)=> AmericanNumbers()))),
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


        ],
      ),
    );
  }
}