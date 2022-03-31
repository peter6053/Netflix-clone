import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/widgets/Big_text.dart';
import 'package:untitled/widgets/Small_Text.dart';

import 'food_page_body.dart';

class MainFoodPage extends StatelessWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Center(
              child: Container(
                margin: const EdgeInsets.only(top: 45, bottom: 45),
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        BigText(
                          text: ("Bangladesh"),
                          color: Colors.green,
                        ),
                        Row(
                          children: [
                            smalltext(text: "njuguna"),
                            const Icon(Icons.arrow_drop_down_rounded)
                          ],
                        )
                      ],
                    ),
                    Container(
                        width: 45,
                        height: 45,
                        child: const Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        // child: const Icon(Icons.search),color:
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.blue))
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            child: FoodPageBody(),
          )),
        ],
      ),
    );
  }
}
