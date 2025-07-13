import 'package:flutter/cupertino.dart';

class CardBackground extends StatelessWidget {
  const CardBackground({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xFF1B2443),
                  Color(0xFF433A8E),
                  Color(0xFF9342AB),
                  Color(0xFF664DAB),
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        SafeArea(child: child)
      ],
    );
  }
}