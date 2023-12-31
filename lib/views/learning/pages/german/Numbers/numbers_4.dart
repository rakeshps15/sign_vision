import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sign_vision/utils/colors.dart';
import 'package:sign_vision/views/learning/pages/british/button3.dart';
import 'package:sign_vision/views/learning/pages/german/Numbers/utils_n4.dart';

class GermanNumbers extends StatefulWidget {
  @override
  State<GermanNumbers> createState() => _GermanNumbersState();
}

class _GermanNumbersState extends State<GermanNumbers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.kblueColor,
        elevation: 0,
        leading: IconButton(onPressed: ()=>Get.to(AslButton3()), icon: Icon(Icons.arrow_back,color: Colors.white,)),
      ),
      backgroundColor: MyColors.kblueColor,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 5),
          itemBuilder: (context, index) {
            return Container(
              height: 20,
              decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.circular(30),image:DecorationImage(image: AssetImage(Gslnumbers[index])),
                // image: DecorationImage(
                //     image: NetworkImage(images[index]))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
            );
          },
          itemCount: 10,
        ),
      ),
    );
  }
}


