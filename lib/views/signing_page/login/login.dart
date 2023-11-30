import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sign_vision/views/hom_page/home.dart';
import '../registration/registration.dart';

void main(){
  runApp(MaterialApp(home: Login(),));
}


class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool passwordvisibility = true;
  final uname = TextEditingController();
  final pass = TextEditingController();
  late SharedPreferences preferences;
  late bool newuser;

  @override
  void initState() {
    check_if_user_already_login();
    super.initState();
  }

  void check_if_user_already_login() async{
    preferences = await SharedPreferences.getInstance()!;
    newuser = preferences.getBool('newuser') ?? true;
    if(newuser == false){
      Navigator.push(context, MaterialPageRoute(
          builder: (context)=>HomePage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 100, right: 100, top: 100),
                  child: Text(
                    "Login",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Text(
                    "Welcome back! Login with your credentials",
                    style: TextStyle(fontSize: 10),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: TextFormField(
                    controller: uname,
                    decoration: InputDecoration(
                        hintText: "Username",
                        prefixIcon: Icon(Icons.contact_mail_outlined),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    validator: (username) {
                      if (username!.isEmpty ||
                          !username.contains("@") ||
                          !username.contains(".")) {
                        return "Fields are empty or Invalid";
                      }
                    },
                    textInputAction: TextInputAction.next,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, bottom: 50),
                    child: TextFormField(
                      controller: pass,
                      obscureText: passwordvisibility,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (passwordvisibility == true) {
                                    passwordvisibility = false;
                                  } else {
                                    passwordvisibility = true;
                                  }
                                });
                              },
                              icon: Icon(passwordvisibility == true
                                  ? Icons.visibility_off_sharp
                                  : Icons.visibility)),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.lock),
                          hintText: "Password"),
                      validator: (pass) {
                        if (pass!.isEmpty || pass.length < 6) {
                          return "Password length should be greater than 6";
                        }
                      },
                      textInputAction: TextInputAction.next,
                    )),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: MaterialButton(
                    color: Colors.pink,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                      onPressed: () => validateandLogin(),
                  child: const Text("LOGIN"),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Signup()));
                    },
                    child: Text("New User ? Sign Up")),
              ],
            ),
          ),
        ));
  }
  void validateandLogin() async {
    preferences = await SharedPreferences.getInstance()!;
    String storedusername = preferences.getString('uname')!;
    String storedpassword = preferences.getString('pass')!;

    String usename = uname.text;
    String pwd    = pass.text;
    preferences.setBool('newuser', false);

    if (storedusername == usename && storedpassword == pwd) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Signup()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Invalid username or password")));
    }
  }
}
