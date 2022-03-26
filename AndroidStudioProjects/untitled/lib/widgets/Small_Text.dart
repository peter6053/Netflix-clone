import 'package:flutter/cupertino.dart';

class smalltext extends StatelessWidget {
  Color? color;
  final String text;
  double Size;
  double height;
  smalltext({Key? key, this.color,
    required this.text,
    this.Size=10,
    this.height=1.2

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,

      style: TextStyle(
          fontFamily: "Roboto",
          fontSize: Size,
          color: color,
          fontWeight: FontWeight.w400,
          height: height
      ),
    );
  }
}