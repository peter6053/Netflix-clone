
import 'package:flutter/material.dart';
//import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:untitled/widgets/Big_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  _FoodPageBodyState createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.yellow,
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
    return Stack(
      children: [
        Container(
          height: 220,
          margin: EdgeInsets.only(left: 5, right: 5),
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

            ),
            child: Container(
              padding: EdgeInsets.only(top: 10, right: 15, bottom: 15),
              child: Column(
                children: [
                  BigText(text: "Chinese Side"),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(5, (index) => Icon(Icons.star, color: Colors.green,)) ,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],

    );
  }
}
