
import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  _FoodPageBodyState createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.red,
      height: 320,
      child: PageView.builder(
          itemCount: 5,
          itemBuilder: (context, position) {
        return _buildpageitem(position);
      }),
    );
  }
  Widget _buildpageitem(int index){
    return Container(
      height: 220,
      margin: EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color:index.isEven? Colors.red: Colors.white,
        image: DecorationImage(
          fit: BoxFit.cover,
              image: AssetImage(
                ""

        )
        )


      ),
    );
  }
}
