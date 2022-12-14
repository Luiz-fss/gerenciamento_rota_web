import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:auto_route/auto_route.dart';
import 'course_detail_page.dart';

class CourseListPage extends StatelessWidget {
  const CourseListPage({Key? key,@QueryParam()this.search,@QueryParam()this.page}) : super(key: key);

  final String? search;
  final int? page;

  @override
  Widget build(BuildContext context) {
    RouteData.of(context).queryParams;
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista Cursos buscando por $search pagina $page"),
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
              //Get.toNamed("/courses/$index",arguments: "TESTE ARGS");
              context.router.pushNamed("/courses/$index");
            },
          );
        },
      ),
    );
  }
}
