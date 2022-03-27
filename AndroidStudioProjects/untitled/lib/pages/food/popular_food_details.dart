import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/widgets/Appicon.dart';

import '../../widgets/App_Column.dart';
import '../../widgets/Big_text.dart';
import '../../widgets/Expandale_button_widget.dart';
import '../../widgets/Icon_textAnd_icons.dart';
import '../../widgets/Small_Text.dart';

class PopularFoodDetails extends StatelessWidget {
  const PopularFoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //backgroundimage
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(20),
                ),
                color: Colors.blue,
              ),


            ),),
          //iconwidgets
          Positioned(
            top: 45,
            left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppIcon(icon: Icons.arrow_back_ios_new),
                    AppIcon(icon: Icons.shopping_cart_outlined)
                  ],
              )),
          //introductionoffood
          Positioned(
              left: 0,
              right: 0,
             // bottom: 0,
              top: 300,

              child: Container(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 20,top: 20),
              decoration: BoxDecoration(

                borderRadius:   BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),

                ),
                color: Colors.white
              ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(text: "chinese side"),
                    SizedBox(height: 20,),
                    BigText(text: "Introduce"),
                    //Expandable_Text_Widget(text: "t to ma. like Aldus PageMaker including versions of Lorem Ipsum.",)
                     smalltext(text: "Field 'secondhalf' hasField 'secondhalf' has not been initialized. notField 'secondhalf' has not been initialized. been initializedField Field Field FieldField Field Field 'secondhalf' has not been initialized.'secondhalf' has not been initialized.'secondhalf' has not been initialized. 'secondhalf' has not been initialized.'secondhalf' has not been initialized.'secondhalf' has not been initialized.'secondhalf' has not been initialized..")
                  ],
                ),

          ))
          //Expandablewidget
          
        ],
      ),
      bottomNavigationBar: Container(
        height: 100,
        padding: EdgeInsets.only(top: 20, bottom: 10,left: 20,right: 20 ),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30)

          )

        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: 20, bottom: 20, right: 20,left: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,

              ),
              child: Row(
                children: [
                  Icon(Icons.remove),
                  SizedBox(width: 5,),
                  BigText(text: "0"),
                  SizedBox(width: 5,),
                  Icon(Icons.add),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, bottom: 10, right: 20,left: 20),
              child: BigText( text: "\$10 ADD TO CART", color: Colors.white,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.lightBlueAccent

              ),
            )
          ],
        ),
      ),
    );
  }
}
