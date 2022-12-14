import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:auto_route/auto_route.dart';
class CourseDetailPage extends StatelessWidget {
  const CourseDetailPage({Key? key, @PathParam() required this.id}) : super(key: key);
  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Curso $id"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            //Get.back(result: "Voltar passando algum argumento");
            //Snack bar com Get
           // Get.snackbar("Teste Snackbar", "Mensagem da snack");
           //dialog
           //Get.dialog(AlertDialog(title: Text("Teste"),));
            context.router.pushNamed("/checkout");
          },
          child: const Text("Comprar"),
        ),
      ),
    );
  }
}
