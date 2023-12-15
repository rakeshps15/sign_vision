import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:sign_vision/utils/colors.dart';
import 'package:sign_vision/views/hom_page/home.dart';

class UploadScreen extends StatefulWidget {
  @override
  _UploadScreenState createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  File? _image;
  String? prediction;

  final picker = ImagePicker();
  Future getImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }
  Future<void> uploadImage() async {
    // Replace 'YOUR_API_ENDPOINT' with your actual API endpoint
    var apiUrl = Uri.parse('http://10.0.2.2:8000/api/hand-tracking/upload/');
    if(_image!=null){
      // Create a multipart request
      var request = http.MultipartRequest('POST', apiUrl);

      // Add the image file to the request
      var image = await http.MultipartFile.fromPath('file', _image!.path);
      request.files.add(image);

      try {
        var response = await request.send();
        if (response.statusCode == 200) {
          print('Image uploaded successfully!');
          final Map<String, dynamic> responseData = json.decode(await response.stream.bytesToString());
          print('Response Data: $responseData');
          setState(() {
            prediction = responseData['index'];
          });
          return responseData['index'];
        } else {
          print('Failed to upload image. Status code: ${response.statusCode}');
        }
      } catch (e) {
        print('Error uploading image: $e');
      } }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.kblueColor,
      appBar: AppBar(
        leading: IconButton(onPressed: ()=>Get.to(HomePage()), icon: Icon(Icons.arrow_back,color: Colors.white,)),
        backgroundColor: MyColors.kblueColor,
        title: const Text('Image Upload',style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 60,),
            Container(
              alignment: Alignment.center,
              height: 420,
              width: 300,
              color: Color.fromARGB(255, 32, 63, 88),
              child: _image == null
                  ? Icon(Icons.add_a_photo,size: 120, color: Colors.white,)
                  : Image.file(
                _image!,
                fit: BoxFit.fitHeight,

              ),
            ),
            SizedBox(height: 40),


            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(12)
              ),
              alignment: Alignment.center,
              height: 60,
              width: 250,
              child: prediction != null
                  ? Text('$prediction',style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),)
                  : Text('Prediction will appear here'),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue[900]),
                      minimumSize: MaterialStateProperty.all(const Size(150, 40)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ))),
                  onPressed: getImage,
                  child: Text('Select Image',style: TextStyle(color: Colors.white),),
                ),
            SizedBox(width: 45,),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.blue[900]),
                  minimumSize: MaterialStateProperty.all(const Size(150, 40)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ))),
              onPressed: () async {
                await   uploadImage();
              },
              child: Text('Upload Image',style: TextStyle(color: Colors.white),),
            ),
              ],
            ),


          ],
        ),
      ),
    );
  }
}