import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myposts/models/post.dart';
import 'package:myposts/pages/home/home_page_controller.dart';

class HomePage extends GetWidget<HomePageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () {
          if (controller.state.value == HomePageState.loading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemCount: controller.posts.length,
              itemBuilder: (BuildContext context, int index) {
                final Post currentPost = controller.posts[index];
                return ListTile(
                  title: Text(currentPost.title),
                  subtitle: Text(currentPost.body),
                );
              },
            );
          }
        },
      ),
    );
  }
}
