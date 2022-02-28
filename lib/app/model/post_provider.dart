import 'dart:convert';

import 'package:get/get.dart';
import 'post_model.dart';

const baseUrl = 'https://jsonplaceholder.typicode.com/posts';

class PostsProvider extends GetConnect {
  Future<List<Post>> getPosts() async {
    List<Post> postsList = <Post>[];
    final response = await get(baseUrl, decoder: (body) {
      postsList = postFromJson(body);
      return postsList;
    });
    if (response.hasError) {
      throw Exception("Erro ao buscar posts");
    }
    return postsList;
  }
}
