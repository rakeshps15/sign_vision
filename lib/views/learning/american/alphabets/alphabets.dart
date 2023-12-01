import 'package:flutter/material.dart';
import 'package:sign_vision/utils/colors.dart';
import 'package:sign_vision/views/learning/american/alphabets/utils.dart';

void main()
{
  runApp(MaterialApp(home: AmericanAlphabets()));
}

class AmericanAlphabets extends StatefulWidget {

  @override
  State<AmericanAlphabets> createState() => _AmericanAlphabetsState();
}

class _AmericanAlphabetsState extends State<AmericanAlphabets> {
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
          itemCount: 26,
        ),
      ),
    );
  }
}

