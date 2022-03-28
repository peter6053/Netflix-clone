import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled/data/api/api_client.dart';

import '../controllers/popular_food_controller.dart';
import '../data/api/repository/popular_food_repo.dart';

Future<void> init()async {
    //for api
    Get.lazyPut(()=>Apiclient(AppBaseUrl: "httpsndsn"));
//for client
    Get.lazyPut(()=> PopularFoodRepo(apiclient:Get.find()));
    //load controllers
    Get.lazyPut(()=> PopularFoodControler ( popularProductRepo:Get.find()));
}