import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/home_controller.dart';
import '../controller/outra_controller.dart';
import 'home_page.dart';

class Outra extends StatelessWidget {
  final Controller c = Get.find();
  final ControllerOutra controllerOutra = Get.put(ControllerOutra());
  @override
  Widget build(context) => Scaffold(
        body: Center(
          child: Column(
            children: [
              Text("${c.count}"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text("Voltar usando Get.back()"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(HomePage());
                  },
                  child: Text("Trocar de tela Get.to(HomePage())"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Para ir para a próxima tela e NÃO deixar opção para voltar para a tela anterior (bom para SplashScreens, telas de login e etc.):
                    Get.off(HomePage());
                  },
                  child: Text("Trocar de tela Get.off(HomePage())"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Para ir para a próxima tela e NÃO deixar opção para voltar para a tela anterior (bom para SplashScreens, telas de login e etc.):
                    Get.offAll(HomePage());
                  },
                  child: Text("Trocar de tela Get.offAll(HomePage())"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                //Pegando nome dentro de um controller instanciado lá em cima
                child: Text("Nome: ${controllerOutra.nome}"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    Get.changeTheme(ThemeData.dark());
                  },
                  child: Text("Trocar de tela Get.offAll(HomePage())"),
                ),
              ),
            ],
          ),
        ),
      );
}
