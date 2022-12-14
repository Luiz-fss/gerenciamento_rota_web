import 'package:flutter/material.dart';
import 'package:gerenciamento_rotas_web/pages/course_list_page.dart';
import 'package:gerenciamento_rotas_web/router/router.gr.dart';
import 'package:get/get.dart';
import 'package:auto_route/auto_route.dart';

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
            //Get.toNamed("/courses/");
            /*Exemplo com autoRoute*/
            //context.router.push(const CourseListRoute());
            context.router.pushNamed("/courses");
          },
          child: const Text("Ver cursos"),
        ),
      ),
    );
  }
}
