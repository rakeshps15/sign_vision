import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sign_vision/views/hom_page/components/drawer/termsandconditions.dart';
import 'package:sign_vision/views/signing_page/option/main_option.dart';
import '../../../../utils/colors.dart';
import 'about_us.dart';

class DrawerEx extends StatefulWidget {
  @override
  State<DrawerEx> createState() => _DrawerExState();
}

class _DrawerExState extends State<DrawerEx> {
  late SharedPreferences preferences;
  late String username;
  @override
  void initState() {
    logoutfunction();
    super.initState();
  }

  void logoutfunction() async{
    preferences = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: MyColors.kGreyColor,
        child: ListView(
          children: [
            Padding(padding: EdgeInsets.all(10)),

            ListTile(
              leading: Icon(Icons.home, color: Colors.white70),
              title: Text("Home",
                  style: TextStyle(fontSize: 18, color: Colors.white70)),
              onTap: () => Navigator.of(context).pop(),
            ),
            ListTile(
              leading: Icon(Icons.policy, color: Colors.white70),
              title: Text("About Us",
                  style: TextStyle(fontSize: 18, color: Colors.white70)),
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => About())),
            ),
            ListTile(
              leading: Icon(Icons.speaker_notes, color: Colors.white70),
              title: Text("Terms and Conditions",
                  style: TextStyle(fontSize: 18, color: Colors.white70)),
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => TermsAndConditionsScreen())),
            ),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.white70),
              title: Text("Signout",
                  style: TextStyle(fontSize: 18, color: Colors.white70)),
              onTap: () {
                preferences.setBool('newuser', true);
                Navigator.of(context).pop();
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => MainUi()));
              },
            )
          ],
        ),
    );
  }
}
