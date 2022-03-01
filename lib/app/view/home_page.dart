import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/home_controller.dart';
import 'outra_page.dart';
import 'consumindo_api_page.dart';

class HomePage extends StatelessWidget {
  final Controller c = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Obx(() => Text("Total de cliques: ${c.count}"))),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: Text("Ir para outra tela"),
              onPressed: () => Get.to(Outra()),
            ),
            ElevatedButton(
              child: Text("Ir para tela de consumo de API"),
              onPressed: () => Get.to(ConsumindoApi()),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: c.increment,
      ),
    );
  }
}
