import 'package:flutter/cupertino.dart';

class ScreenBackground extends StatelessWidget {
  const ScreenBackground({
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
                  Color(0xFF664DAB),
                  Color(0xFF9342AB),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
            ),
          ),
        ),
        SafeArea(child: child)
      ],
    );
  }
}