import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;
import 'package:sign_vision/utils/colors.dart';

import 'home.dart';

class ImageDisplayScreen extends StatefulWidget {
  @override
  _ImageDisplayScreenState createState() => _ImageDisplayScreenState();
}

class _ImageDisplayScreenState extends State<ImageDisplayScreen> {
  TextEditingController _textController = TextEditingController();
  List<Map<String, dynamic>> _imagesData = [];

  Future<void> _fetchImages(String text) async {
    String apiUrl = "http://10.0.2.2:8000/api/images/";

    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        body: {'input': text.trim()},
      );

      if (response.statusCode == 200) {
        List<dynamic> responseData = json.decode(response.body);
        print("Successful");

        setState(() {
          _imagesData = List<Map<String, dynamic>>.from(responseData);
        });
      } else {
        print("Error: ${response.statusCode}");
      }
    } catch (error) {
      print("Error: $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.kblueColor,
      appBar: AppBar(
        leading: IconButton(onPressed: ()=>Get.to(HomePage()), icon: Icon(Icons.arrow_back)),
        backgroundColor: MyColors.kblueColor,
        title: Text('Text Upload'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[

            SizedBox(height: 25,),


            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(5)),
              child: TextField(
                controller: _textController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)
                    ),
                    isDense: true,
                    hintStyle: TextStyle(color: Colors.grey[700],letterSpacing: 1.2, fontWeight: FontWeight.bold),
                    hintText: 'Enter text',
                    fillColor: Colors.green),
              ),
            ),


            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _fetchImages(_textController.text);
              },
              child: Text('Display'),
            ),
            SizedBox(height: 20),
            Container(
              color: Colors.black,
              width: double.infinity,
              child: Container(height: 180,
                child: Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _imagesData.length,
                    itemBuilder: (context, index) {
                      return Container(
                        color: Colors.black,
                        height: 10,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Image.memory(
                                    base64Decode(_imagesData[index]['image_data']),height: 90,
                                  ),
                                ),

                                SizedBox(height: 25),

                                Text('${_imagesData[index]['character']}', style: TextStyle(color: Colors.white, fontSize: 22,),),

                              ],
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}