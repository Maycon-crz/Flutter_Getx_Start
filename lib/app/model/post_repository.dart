import 'post_provider.dart';

class PostsRepository {
  final PostsProvider api;
  PostsRepository(this.api);

  getPosts() {
    return api.getPosts();
  }
}
