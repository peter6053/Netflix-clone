import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color backgroundcolor;
  final Color iconcolour;
  final double size;
  final double iconsize;
   AppIcon({Key? key,
   required this.icon,
     this.backgroundcolor= Colors.red,
     this.iconcolour = Colors.white,
     this.size= 40,
     this.iconsize =16
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size/2),
        color: backgroundcolor,


      ),
      child:Icon (
        icon,
          color:iconcolour,
          size:iconsize

      ),

    );
  }
}
