import 'package:flutter/material.dart';
import 'package:gerenciamento_rotas_web/pages/course_detail_page.dart';
import 'package:gerenciamento_rotas_web/pages/course_list_page.dart';
import 'package:gerenciamento_rotas_web/pages/home_page.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: ()=> HomePage()),
        GetPage(name: "/courses/", page: ()=> CourseListPage()),
        GetPage(name: "/courses/:id", page: ()=> CourseDetailPage(id: Get.parameters["id"]!)),
      ],
    );
  }
}

