import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sign_vision/utils/colors.dart';
import 'package:sign_vision/views/hom_page/learnerpage.dart';
import '../../british/alphabets/utils.dart';

class BritishAlpabhabets extends StatefulWidget {
  @override
  State<BritishAlpabhabets> createState() => _BritishAlpabhabetsState();
}

class _BritishAlpabhabetsState extends State<BritishAlpabhabets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: IconButton(onPressed: ()=>Get.to(Learning()), icon: Icon(Icons.arrow_back)),),
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
                borderRadius: BorderRadius.circular(30),image:DecorationImage(image: AssetImage(images[index],),fit: BoxFit.contain),
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
          itemCount: 26,
        ),
      ),
    );
  }
}


