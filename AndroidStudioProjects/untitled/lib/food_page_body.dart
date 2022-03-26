
import 'package:flutter/material.dart';
//import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:untitled/widgets/Big_text.dart';
import 'package:untitled/widgets/Icon_textAnd_icons.dart';
import 'package:untitled/widgets/Small_Text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  _FoodPageBodyState createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var  _CurPagevalue= 0.0;
  @override
  void initstate(){
        super.initState();
        pageController.addListener(() {
         setState(() {
           _CurPagevalue = pageController.page!;
           //print("current value is "+_CurPagevalue.toString());
         });

        });

  }
  @override
  void dispose(){
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      //color: Colors.yellow,
      height: 320,
      child: PageView.builder(
            controller: pageController,
          itemCount: 5,
          itemBuilder: (context, position) {
        return _buildpageitem(position);
      }),
    );
  }
  Widget _buildpageitem(int index){
    Matrix4  matrix = new Matrix4.identity();
    /*if (index==_CurPagevalue.floor()){
      var CurrScale =

    }*/
    return Stack(
      children: [
        Container(
          height: 220,
          margin: EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color:index.isEven? Colors.red: Colors.yellow,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                      ""

                  )
              )


          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 150,
            margin: EdgeInsets.only(left: 50, right: 40, bottom: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color:index.isEven? Colors.white: Colors.yellow,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,


                )

              ]

            ),
            child: Container(
              padding: EdgeInsets.only(top: 15, right: 15, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: "Chinese Side"),
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
              ),
            ),

          ),
        )
      ],

    );
  }
}
