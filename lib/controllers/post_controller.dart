import 'package:get/get.dart';
import 'package:getxtutorial/models/post_models.dart';
import 'package:getxtutorial/services/api_services.dart';

class PostController extends GetxController{
  var isLoading = true.obs;
  var postlist = <PostModel>[].obs;

  @override
  void onInit() {
    getAllPost();
    super.onInit();
  }

  void getAllPost() async{
    var data = await ApiService().fetchPost();
    if(data.length>0)
      {
        postlist.clear();
        isLoading(false);
        postlist.addAll(data);
      }
  }

}