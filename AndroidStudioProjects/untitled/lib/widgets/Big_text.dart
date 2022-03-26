import 'package:flutter/cupertino.dart';

class BigText extends StatelessWidget {
   Color? color;
  final String text;
  double Size;
  TextOverflow textOverflow;
  BigText({Key? key, this.color,
    required this.text,
    this.Size=20,
    this.textOverflow = TextOverflow.ellipsis
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: textOverflow,
      style: TextStyle(
        fontFamily: "Roboto",
        fontSize: Size,
        color: color,
            fontWeight: FontWeight.w400
      ),
    );
  }
}
