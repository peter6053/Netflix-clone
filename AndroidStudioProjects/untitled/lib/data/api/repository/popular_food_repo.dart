import 'package:get/get.dart';
import 'package:untitled/data/api/api_client.dart';

class PopularFoodRepo extends GetxService {
  final Apiclient apiclient;

  PopularFoodRepo({required this.apiclient});

  Future<Response> GetPopularProductList() async {
    return await apiclient.getData("http");
  }
}
