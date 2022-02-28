import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/post_controller.dart';

class ConsumindoApi extends GetView<PostsController> {
  final controllerApi = Get.put(PostsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetConnection Tutprial'),
      ),
      body: Obx(() {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Tutorial GetConnect',
              ),
            ],
          ),
        );
      }),
    );
  }
}
