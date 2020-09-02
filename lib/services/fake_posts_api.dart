import 'dart:convert';
import 'package:myposts/contracts/posts_api_service.dart';
import 'package:myposts/models/post.dart';
import 'package:http/http.dart' as http;

class FakePostsAPI extends PostsAPIService {
  @override
  Future<List<Post>> getPosts() async {
    final http.Response postsData = await http.get('https://jsonplaceholder.typicode.com/posts');
    if (postsData.statusCode == 200) {
      final jsonData = json.decode(postsData.body) as List<dynamic>;
      print(jsonData);
      return jsonData.map((dynamic element) => Post.fromJson(element)).toList();
    } else {
      print('error');
      return null;
    }
  }
}
