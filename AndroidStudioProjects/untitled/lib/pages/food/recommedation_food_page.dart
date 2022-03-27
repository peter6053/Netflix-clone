import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecommededFoodDetails extends StatelessWidget {
  const RecommededFoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AppBar(
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assest/images/fooddeliveryapp.jpeg",
                width: double.maxFinite,


              )

            ),
          )
        ],
      ),

    );
  }
}
