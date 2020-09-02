import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myposts/core/initial_bindings.dart';
import 'package:myposts/pages/home/home_page_bindings.dart';
import 'pages/home/home_page.dart';

void main() => runApp(PostsApp());

class PostsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: InitialBindings(),
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => HomePage(),
          binding: HomePageBindings(),
        ),
      ],
    );
  }
}
