import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app_ui_design/ui/screens/home_screen.dart';

import '../widget/screen_background.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static const String name='/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Column(
          children: [
            Center(
              child: Image(
                image: AssetImage("assets/images/Weather _))10 18.png"),
              ),
            ),
            const SizedBox(height: 50),
            Text(
              "Weather",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 64,
                fontFamily: "poopins-bold",
              ),
            ),
            Text(
              "ForeCasts",
              style: TextStyle(
                color: Color(0xFFDDB130),
                fontSize: 64,
                fontFamily: 'poppins-medium',
              ),
            ),
            const SizedBox(height: 53),
            SizedBox(
              height:70 ,
              width: 300,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, HomeScreen.name);
                  },
                  child: Text("Get Start",style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: "poppins"
                  ),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFDDB130),
                  foregroundColor: Color(0xFF372B85),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50))
                  )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
