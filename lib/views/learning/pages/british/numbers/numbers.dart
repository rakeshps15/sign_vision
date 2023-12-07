import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sign_vision/utils/colors.dart';
import 'package:sign_vision/views/hom_page/learnerpage.dart';
import 'package:sign_vision/views/learning/pages/australian/button.dart';
import '../../../../hom_page/home.dart';
import '../../british/numbers/utils.dart';

class BritishNumbers extends StatefulWidget {
  @override
  State<BritishNumbers> createState() => _BritishNumbersState();
}

class _BritishNumbersState extends State<BritishNumbers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.kblueColor,
        elevation: 0,
        leading: IconButton(onPressed: ()=>Get.to(AslButton3()), icon: Icon(Icons.arrow_back)),
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
                borderRadius: BorderRadius.circular(30),image:DecorationImage(image: AssetImage(images[index])),
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


