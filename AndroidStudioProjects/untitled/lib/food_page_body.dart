
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:untitled/widgets/App_Column.dart';
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

    return Column(
      children: [

        Container(
          //color: Colors.yellow,
          height: 320,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildpageitem(position);
              }),

        ),
    new DotsIndicator(
    dotsCount: 5,
    //position: currentIndexPage,
    decorator: DotsDecorator(
    size: const Size.square(9.0),
    activeSize: const Size(18.0, 9.0),
    activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    ),
    ),
        SizedBox(height: 10,),
        Container(
          margin: EdgeInsets.only(left:30, right: 30, ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: "Popular"),
              SizedBox(width: 10,),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: BigText (text: ".",),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 2),
                child: smalltext(text: "foodpairing"),
              ),




            ],

          ),

        ),
    //list of food and images
        Container(
          height: 700,
          child:  ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(left: 20,right: 20, bottom: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 120,
                        width:120,

                        decoration: BoxDecoration(
                          //fit: BoxFit.cover,
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey,

                        ),
                      ),
                      //textcontainer
                      Container(
                        height: 100,
                        width:250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(20),
                          ),
                          color: Colors.white,
                        ),
                        child:Padding(
                         padding: EdgeInsets.only(left: 10, right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BigText(text: "Nutricious fruit meal in china"),
                              SizedBox(height: 10, width: 10,),
                              smalltext(text: "With Chiness Characteristics"),
                              SizedBox(height: 10, width: 10,),
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
                          ),
                        ) ,
                      )
                    ],
                  ),


                );
              }),
        ),



      ],
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
              child: AppColumn(text: "Chineese side"),
            ),

          ),
        )
      ],

    );
  }
}
