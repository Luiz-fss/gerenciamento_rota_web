import 'package:flutter/material.dart';
import 'package:gerenciamento_rotas_web/pages/course_list_page.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            //Get.to(()=>const CourseListPage(),);
            Get.toNamed("/courses/");
          },
          child: const Text("Ver cursos"),
        ),
      ),
    );
  }
}
