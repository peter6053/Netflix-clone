import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:untitled/utils/dimensions.dart';
import 'package:untitled/widgets/Small_Text.dart';

class Expandable_Text_Widget extends StatefulWidget {
  final String text;
  const Expandable_Text_Widget({Key? key, required this.text}) : super(key: key);

  @override
  _Expandable_Text_WidgetState createState() => _Expandable_Text_WidgetState();
}

class _Expandable_Text_WidgetState extends State<Expandable_Text_Widget> {
  late String firsthalf;
  late String secondhalf;

  bool hiddentext = true;

  double textheight = 1;

  @override
  void initstate() {
    super.initState();

    if(widget.text.length>textheight){
      firsthalf=widget.text.substring(0, textheight.toInt());
      secondhalf=widget.text.substring(textheight.toInt()+1, widget.text.length );

    }else{
      firsthalf=widget.text;
      secondhalf = "";

    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondhalf.isEmpty?smalltext(text: firsthalf):Column(
        children: [
          smalltext(text:hiddentext?(firsthalf+"..."):(firsthalf+secondhalf) ),
          InkWell(
            onTap: (){

            },
            child: Row(
              children: [
                smalltext(text: "show more"),
                Icon(Icons.arrow_drop_down)
              ],
            ),

          )
        ],
      ),

    );
  }
}
