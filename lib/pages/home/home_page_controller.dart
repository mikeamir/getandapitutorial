import 'package:get/get.dart';
import 'package:myposts/contracts/posts_api_service.dart';
import 'package:myposts/models/post.dart';

enum HomePageState { loading, finishedLoading }

class HomePageController extends GetxController {
  Rx<HomePageState> state = HomePageState.loading.obs;
  List<Post> posts;

  @override
  void onInit() {
    loadPosts();
  }

  Future loadPosts() async {
    final PostsAPIService postsAPIService = Get.find<PostsAPIService>();
    posts = await postsAPIService.getPosts();
    state.value = HomePageState.finishedLoading;
  }
}
