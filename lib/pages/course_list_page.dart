import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'course_detail_page.dart';

class CourseListPage extends StatelessWidget {
  const CourseListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista Cursos"),
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context,index){
          return ListTile(
            title: Text("Curso"),
            onTap: ()async{
              //usar o .of no lugar do .to equivale ao push.repleacement
              //off.all remove todas as telas anteriores.
              //final pegarArgumentoDaTela = await
              //Get.to(()=>CourseDetailPage(id: index.toString()));
              Get.toNamed("/courses/$index",arguments: "TESTE ARGS");
            },
          );
        },
      ),
    );
  }
}
