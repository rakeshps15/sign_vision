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
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 100,right:100,top: 100),
                child: Text("Hello There",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
              ),
              // const Padding(
              //   padding: EdgeInsets.only(left: 10,right: 10,top: 10),
              //   child: Text("Automatic identity verification which enables you to verify your identity",style: TextStyle(fontSize: 10),),
              // ),
              SizedBox(height: 40,),
              Image.asset("asset/intro/main.png",height: 220,width: 300,),
              SizedBox(height: 40,),
              Padding(
                padding:  const EdgeInsets.only(top: 50),
                child: ElevatedButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login()));
                },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
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
                      backgroundColor: Colors.green,
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