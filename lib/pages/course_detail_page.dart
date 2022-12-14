import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CourseDetailPage extends StatelessWidget {
  const CourseDetailPage({Key? key, required this.id}) : super(key: key);
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
           Get.dialog(AlertDialog(title: Text("Teste"),));
          },
          child: const Text("Mostrar snack"),
        ),
      ),
    );
  }
}
