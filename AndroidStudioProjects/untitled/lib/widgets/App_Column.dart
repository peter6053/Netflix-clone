import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Big_text.dart';
import 'Icon_textAnd_icons.dart';
import 'Small_Text.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text ),
        SizedBox(height: 10,),
        SizedBox(height: 20,),

        Row(
          children: [
            Wrap(
              children: List.generate(5, (index) => Icon(Icons.star, color: Colors.green,)),
            ),
            SizedBox(width: 10,),
            smalltext(text: "4.5"),
            SizedBox(width: 10,),
            smalltext(text: "12345"),
            SizedBox(width: 10,),
            smalltext(text: "comments"),

          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(icon: Icons.circle_sharp,
                text: "Normal",

                iconColor: Colors.blueGrey),
            IconAndTextWidget(icon: Icons.location_on,
                text: "1.7km",

                iconColor: Colors.blueGrey),
            IconAndTextWidget(icon: Icons.access_time_rounded,
                text: "32min",

                iconColor: Colors.blueGrey)

          ],
        ),
      ],
    );
  }
}
