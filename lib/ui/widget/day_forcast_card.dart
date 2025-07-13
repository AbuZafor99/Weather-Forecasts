import 'package:flutter/cupertino.dart';

class DayForcastCard extends StatelessWidget {
  const DayForcastCard({
    super.key, required this.temp, required this.day,
  });

  final String temp;
  final String day;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 82,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFF1B2443),
                Color(0xFF433A8E),
                Color(0xFF664DAB),
                Color(0xFF9342AB),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
          ),
          borderRadius: BorderRadius.circular(50)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 18),
        child: Column(
          children: [
            Text(temp+"°",style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 18,
              fontFamily: 'poppins-medium',
              decoration: TextDecoration.none,
            ),),
            // const SizedBox(height: 5,),
            Image(image: AssetImage("assets/images/Weather _))10 18.png")),
            // const SizedBox(height: 5,),
            Text(day,style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 18,
              fontFamily: 'poppins-medium',
              decoration: TextDecoration.none,
            ),
            ),
          ],
        ),
      ),
    );
  }
}
