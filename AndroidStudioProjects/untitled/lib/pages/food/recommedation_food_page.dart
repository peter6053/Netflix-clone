import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/widgets/Appicon.dart';
import 'package:untitled/widgets/Big_text.dart';

class RecommededFoodDetails extends StatelessWidget {
  const RecommededFoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [

          SliverAppBar(
            toolbarHeight: 60,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
              // Icon(Icons.shopping_cart_outlined)
               AppIcon(icon: Icons.clear, backgroundcolor: Colors.lightBlueAccent,),
               AppIcon(icon: Icons.shopping_cart_outlined, backgroundcolor: Colors.lightBlueAccent,)
             ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(05),
            child: Container(


              child: Center(child: BigText(text: " Chinese side",)),
              width: double.maxFinite ,
              padding: EdgeInsets.only(top: 5,bottom: 5),
              decoration: BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),

                )
              ) ,

            ),
              
            ),
            pinned: true,
          expandedHeight: 300,
            backgroundColor: Colors.green,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                  "assets/fooddeliveryapp.jpeg",
                width: double.maxFinite,
                fit: BoxFit.cover,

              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column (
              children: [
                Container(
                  child: Text(
                      "Field 'secondhalf'orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recentlyorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. hasField 'secondhalf' has not been initialized. notField 'secondhalf' has not"

                  ),
                margin: EdgeInsets.only(left: 20, right: 20),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 50,
              right: 50,
                top:10,
              bottom: 10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.remove, backgroundcolor: Colors.lightBlueAccent, iconsize: 24,),
                BigText(text: "\$10.8"+ "X"+"0", Size: 26,),
                AppIcon(icon: Icons.add,  backgroundcolor: Colors.lightBlueAccent,iconsize: 24,),

              ],
            ),
          ),
          Container(
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
                  child: Icon(
                    Icons.favorite,
                    color: Colors.lightBlueAccent,

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


        ],
      ),
    );
  }
}
