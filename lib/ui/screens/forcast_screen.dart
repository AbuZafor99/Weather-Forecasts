import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app_ui_design/ui/screens/home_screen.dart';
import 'package:weather_app_ui_design/ui/widget/card_background.dart';
import 'package:weather_app_ui_design/ui/widget/day_forcast_card.dart';
import 'package:weather_app_ui_design/ui/widget/screen_background.dart';

class ForcastScreen extends StatefulWidget {
  const ForcastScreen({super.key});

  static const String name = '/forcast-screen';

  @override
  State<ForcastScreen> createState() => _ForcastScreenState();
}

class _ForcastScreenState extends State<ForcastScreen> {
  final List<String> days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(height: 20,),
                  Text(
                    "North America",
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
                  SizedBox(height: 40),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "7-Days Forecasts",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 14),
                  SizedBox(
                    height: 165, // give height so horizontal list has space
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: days.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: DayForcastCard(
                            day: days[index],
                            temp: (18 + index).toString(), // sample temps
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 35),
                  Container(
                    height: 174,
                    child: CardBackground(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 21,vertical: 14),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image(image: AssetImage("assets/images/icon.png")),
                                const SizedBox(width: 12),
                                Text(
                                  "AIR QUALITY",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "openSans",
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 17),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "3-Low Health Risk",
                                style: TextStyle(
                                  fontSize: 28,
                                  fontFamily: "openSans",
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const Divider(
                              height: 20,
                              thickness: 5,
                              indent: 0,
                              endIndent: 0,
                              color: Color(0xFF8E78C8),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("See More",style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: "openSans",
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),),
                                  Icon(Icons.keyboard_arrow_right_sharp,size: 30,color: Colors.white,)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 43,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 150,
                        width: 161,
                        child: CardBackground(
                          child: Padding(
                            padding: const EdgeInsets.all(14),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Image(image: AssetImage("assets/images/Star 1.png")),
                                    const SizedBox(height: 5,),
                                    Text("SUNRISE",style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "openSans",
                                      color: Colors.white,
                                    ),)
                                  ],
                                ),
                                const SizedBox(height: 8,),
                                Text("5:28 AM",style: TextStyle(
                                  fontSize: 28,
                                  fontFamily: "openSans",fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),),
                                const SizedBox(height: 8,),
                                Text("Sunset: 7.25PM",style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "openSans",fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 150,
                        width: 161,
                        child: CardBackground(
                          child: Padding(
                            padding: const EdgeInsets.all(14),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Image(image: AssetImage("assets/images/Star 1.png")),
                                    const SizedBox(height: 5,),
                                    Text("UV INDEX",style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "openSans",
                                      color: Colors.white,
                                    ),)
                                  ],
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(" 4",style: TextStyle(
                                    fontSize: 28,
                                    fontFamily: "openSans",fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),),
                                ),
                                Text("Moderate",style: TextStyle(
                                  fontSize: 28,
                                  fontFamily: "openSans",fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  IconButton(onPressed: _onPressMenuIcon, icon: Icon(Icons.menu,color: Colors.white,size: 40,))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onPressMenuIcon(){
    Navigator.pushNamed(context, HomeScreen.name);
  }
}
