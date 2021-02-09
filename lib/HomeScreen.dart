import 'package:dweerha/Constraints/colors.dart';
import 'package:dweerha/Screens/SplashScreen.dart';
import 'package:dweerha/Utils/SharedPrefManager.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الرئيسية'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: FlatButton(
            color: Color(text_color),
            child: Text(
              'تسجيل الخروج',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              setId(0);
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SplashScreen();
              }));
            },
          ),
        ),
      ),
    );
  }
}
