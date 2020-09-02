import 'package:myposts/models/post.dart';

abstract class PostsAPIService {
  Future<List<Post>> getPosts();
}
