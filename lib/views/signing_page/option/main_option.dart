import 'package:flutter/material.dart';
import '../login/login.dart';
import '../registration/registration.dart';

class MainUi extends StatefulWidget {
  const MainUi({super.key});

  @override
  State<MainUi> createState() => _MainUi();
}

class _MainUi extends State<MainUi> {
  @override
  Widget build(BuildContext context)  {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 200,),
              Image.asset("asset/logo.png",height: 220,width: 300,),
              SizedBox(height: 100,),
              Padding(
                padding:  const EdgeInsets.only(top: 50),
                child: ElevatedButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login()));
                },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[900],
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      minimumSize: Size(250, 50),
                    ),
                    child: Text("Login")),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) =>Signup()));
                },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[900],
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      minimumSize: Size(250, 50),
                    ),
                    child: Text("Sign Up")),
              ),


            ],
          ),
        )

    );
  }
}