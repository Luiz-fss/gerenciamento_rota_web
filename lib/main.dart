import 'package:flutter/material.dart';
import 'package:gerenciamento_rotas_web/guards/check_if_logged_in.dart';
import 'package:gerenciamento_rotas_web/pages/course_detail_page.dart';
import 'package:gerenciamento_rotas_web/pages/course_list_page.dart';
import 'package:gerenciamento_rotas_web/pages/home_page.dart';
import 'package:gerenciamento_rotas_web/router/router.gr.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.I;
void main() {
  getIt.registerSingleton(AppRouter(checkIfLoggedIn: CheckIfLoggedIn()));
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  final AppRouter router = getIt();
  //final router = AppRouter(checkIfLoggedIn: CheckIfLoggedIn());

  @override
  Widget build(BuildContext context) {
   /*Exemplo com AutoRouter*/
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routeInformationParser: router.defaultRouteParser(),
      routerDelegate: router.delegate(),
    );
   /*exemplo com getX
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: ()=> HomePage()),
        GetPage(name: "/courses/", page: ()=> CourseListPage(),transition: Transition.zoom),
        GetPage(name: "/courses/:id", page: ()=> CourseDetailPage(id: Get.parameters["id"]!),transition: Transition.circularReveal),
      ],
    );*/
  }
}

