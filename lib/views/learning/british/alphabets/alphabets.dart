import 'package:flutter/material.dart';
import 'package:sign_vision/utils/colors.dart';
import '../../british/alphabets/utils.dart';

void main(){
  runApp(MaterialApp(home: BritishAlpabhabets(),));
}

class BritishAlpabhabets extends StatefulWidget {
  @override
  State<BritishAlpabhabets> createState() => _BritishAlpabhabetsState();
}

class _BritishAlpabhabetsState extends State<BritishAlpabhabets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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


