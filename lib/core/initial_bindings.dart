import 'package:get/get.dart';
import 'package:myposts/contracts/posts_api_service.dart';
import 'package:myposts/services/my_posts_api.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<PostsAPIService>(MyPostsAPI());
  }
}
