import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sign_vision/views/hom_page/home.dart';
import '../login/login.dart';

class Signup extends StatefulWidget {
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  var formkey2 = GlobalKey<FormState>();
  final name  = TextEditingController();
  final uname = TextEditingController();
  final pwd   = TextEditingController();
  late SharedPreferences preferences;

  bool passvisibility1 = true;
  bool passvisibility2 = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Form(
              child: Column(children: [
                SizedBox(height: 70,),
                const Padding(
                  padding: EdgeInsets.only(left: 100, right: 100, top: 100),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Text(
                    "Create an Account, It's free",
                    style: TextStyle(fontSize: 10),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: name,
                    validator: (email) {
                      if (email!.isEmpty) {
                        return "Name is required";
                      } else
                        return null;
                    },
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        hintText: "Name",
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: uname,
                    validator: (username) {
                      if (username!.isEmpty ||
                          !username.contains("@") ||
                          !username.contains(".")) {
                        return "Fields are empty or Invalid";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        hintText: "Email ID",
                        prefixIcon: Icon(Icons.contact_mail_outlined),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                SizedBox(
                  height: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (pass1) {
                      if (pass1!.isEmpty || pass1.length < 6) {
                        return "Fields are empty or Password length must be greaterthan 6";
                      } else {
                        return null;
                      }
                    },
                    controller: pwd,
                    obscuringCharacter: "*",
                    obscureText: passvisibility1,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                if (passvisibility1 == true) {
                                  passvisibility1 = false;
                                } else {
                                  passvisibility1 = true;
                                }
                              });
                            },
                            icon: Icon(passvisibility1 == true
                                ? Icons.visibility_off_sharp
                                : Icons.visibility)),
                        hintText: "Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),

                  ),
                ),
                SizedBox(height: 40,),
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue[900]),
                        minimumSize: MaterialStateProperty.all(const Size(330, 50)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ))),
                    onPressed: () => storedata(),
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.white),
                    )),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already a User??"),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                    }, child: Text(" Login Now")),
                  ],
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
  void storedata() async {
    String personname = name.text.trim();
    String username = uname.text.trim();
    String password = pwd.text.trim();
    if (personname.isNotEmpty && username.isNotEmpty && password.isNotEmpty) {
      preferences = await SharedPreferences.getInstance()!;
      preferences.setString('name', personname);
      preferences.setString('uname', username);
      preferences.setString('pass', password);

      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Login()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("All Fields mus be filled"),
            duration: Duration(seconds: 3),));
    }
  }
}