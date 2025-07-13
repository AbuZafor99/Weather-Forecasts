import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app_ui_design/ui/screens/forcast_screen.dart';
import 'package:weather_app_ui_design/ui/screens/home_screen.dart';
import 'package:weather_app_ui_design/ui/screens/splash_screen.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        SplashScreen.name:(context)=>SplashScreen(),
        HomeScreen.name:(context)=>HomeScreen(),
        ForcastScreen.name:(context)=>ForcastScreen()
      },
    );
  }
}
