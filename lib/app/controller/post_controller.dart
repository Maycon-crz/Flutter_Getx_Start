import 'package:get/get.dart';
import '../model/post_provider.dart';
import '../model/post_repository.dart';
import '../model/post_model.dart';

class PostsController extends GetxController {
  final postsRepository = Get.put(PostsRepository(PostsProvider()));
  final postsList = <Post>[].obs;
  RxBool loading = false.obs;

  @override
  void onReady() async {
    getPosts();
    super.onReady();
  }

  getPosts() {
    loading(true);
    postsRepository.getPosts().then((data) {
      postsList.value = data;
      loading(false);
    }, onError: (e) {
      loading(false);
    });
  }
}
