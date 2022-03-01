import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/post_controller.dart';

class ConsumindoApi extends GetView<PostsController> {
  final controllerApi = Get.put(PostsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetConnection Tutorial'),
      ),
      body: Obx(() {
        if (controllerApi.loading.value == true) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return ListView.builder(
            itemCount: controllerApi.postsList.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('${controllerApi.postsList[index].title}'),
              );
            });
      }),
    );
  }
}
