import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/api/repository/popular_food_repo.dart';

class PopularFoodControler extends GetxService{
  final PopularFoodRepo popularProductRepo;
PopularFoodControler({required this.popularProductRepo});
List<dynamic> _popularproductlist=[];
List<dynamic> get popularProductList => _popularproductlist;


Future<void> getpopularproductlist()async {
   Response response = await popularProductRepo.GetPopularProductList();
   if(response.statusCode==200){
     _popularproductlist=[];
    // _popularproductlist.addAll();
     update();


   }else{

   }
}

  void update() {}


}