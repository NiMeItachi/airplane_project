import 'package:flutter/cupertino.dart';

class MyText extends StatelessWidget {
  final String text;
  final Color color;

  const MyText({
    super.key,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 12,
        fontFamily: "Overpass",
        fontWeight: FontWeight.w600,
      ),
    );
  }
}