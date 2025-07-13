import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app_ui_design/ui/screens/forcast_screen.dart';
import 'package:weather_app_ui_design/ui/widget/card_background.dart';
import 'package:weather_app_ui_design/ui/widget/screen_background.dart';

import '../widget/build_weather_column.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static final String name = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ScreenBackground(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Image(
                  image: AssetImage("assets/images/Weather _))10 18.png"),
                ),
              ),
              Text(
                "19\u00b0",
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontFamily: 'poppins-medium',
                  fontSize: 64,
                  decoration: TextDecoration.none,
                ),
              ),
              Text(
                "Precipitations",
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 24,
                  fontFamily: 'poppins',
                  decoration: TextDecoration.none,
                ),
              ),
              Text(
                "Max: 24°   Min:18°",
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 24,
                  fontFamily: 'poppins',
                  decoration: TextDecoration.none,
                ),
              ),
              const SizedBox(height: 40),
              Image(image: AssetImage("assets/images/House.png")),
              Container(
                height: 246,
                width: double.infinity,
                child: CardBackground(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 56,
                          vertical: 19,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Today",
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xFFFFFFFF),
                                decoration: TextDecoration.none,
                              ),
                            ),
                            SizedBox(width: 98),
                            Text(
                              "July, 21",
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xFFFFFFFF),
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        height: 20,
                        thickness: 2,
                        indent: 0,
                        endIndent: 0,
                        color: Color(0xFF8E78C8),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            buildWeatherColumn(
                              "19°C",
                              "assets/images/Weather _))10 18 (1).png",
                              "15.00",
                            ),
                            buildWeatherColumn(
                              "19°C",
                              "assets/images/Weather _))10 18 (1).png",
                              "15.00",
                            ),
                            buildWeatherColumn(
                              "19°C",
                              "assets/images/Weather _))10 18 (1).png",
                              "15.00",
                            ),
                            buildWeatherColumn(
                              "19°C",
                              "assets/images/Weather _))10 18 (1).png",
                              "15.00",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.location_on_outlined,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_circle_outline,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: _onPressMenuIcon,
                      icon: Icon(Icons.menu, size: 30, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onPressLocationIcon() {
    //ToDO: Do from API
  }
  void _onPressAddIcon() {
    //TODO: Do from API
  }
  void _onPressMenuIcon() {
    Navigator.pushNamed(context, ForcastScreen.name);
  }
}
