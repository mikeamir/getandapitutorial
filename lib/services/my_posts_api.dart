import 'package:myposts/contracts/posts_api_service.dart';
import 'package:myposts/models/post.dart';

class MyPostsAPI extends PostsAPIService {
  @override
  Future<List<Post>> getPosts() async {
    await Future.delayed(Duration(seconds: 2));
    final List<Map<String, dynamic>> myFakePosts = [
      {
        "userId": 4,
        "id": 33,
        "title": "qui explicabo molestiae dolorem",
        "body": "rerum ut et numquam laborum odit est sit id qui sint in quasi tenetur tempore aperiam et quaerat qui in rerum officiis sequi cumque quod"
      },
      {
        "userId": 4,
        "id": 40,
        "title": "enim quo cumque",
        "body": "ut voluptatum aliquid illo tenetur nemo sequi quo facilis ipsum rem optio mollitia quas voluptatem eum voluptas qui unde omnis voluptatem iure quasi maxime voluptas nam"
      },
      {
        "userId": 5,
        "id": 43,
        "title": "eligendi iste nostrum consequuntur adipisci praesentium sit beatae perferendis",
        "body":
            "similique fugit est illum et dolorum harum et voluptate eaque quidem exercitationem quos nam commodi possimus cum odio nihil nulla dolorum exercitationem magnam ex et a et distinctio debitis"
      },
      {
        "userId": 5,
        "id": 44,
        "title": "optio dolor molestias sit",
        "body": "temporibus est consectetur dolore et libero debitis vel velit laboriosam quia ipsum quibusdam qui itaque fuga rem aut ea et iure quam sed maxime ut distinctio quae"
      },
      {
        "userId": 6,
        "id": 53,
        "title": "ut quo aut ducimus alias",
        "body": "minima harum praesentium eum rerum illo dolore quasi exercitationem rerum nam porro quis neque quo consequatur minus dolor quidem veritatis sunt non explicabo similique"
      },
    ];
    return myFakePosts.map<Post>((fakePost) => Post.fromJson(fakePost)).toList();
  }
}
