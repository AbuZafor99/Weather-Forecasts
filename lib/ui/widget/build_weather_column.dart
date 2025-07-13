import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildWeatherColumn(String temp, String imagePath, String time) {
  return Column(
    children: [
      Text(
        temp,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontFamily: 'poppins',
          decoration: TextDecoration.none,
        ),
      ),
      SizedBox(height: 4),
      Image.asset(
        imagePath,
        height: 40,
        width: 40,
      ),
      SizedBox(height: 4),
      Text(
        time,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontFamily: 'poppins',
          decoration: TextDecoration.none,
        ),
      ),
    ],
  );
}
