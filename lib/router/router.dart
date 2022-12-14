
// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
import 'package:auto_route/auto_route.dart';
import 'package:gerenciamento_rotas_web/guards/check_if_logged_in.dart';
import 'package:gerenciamento_rotas_web/pages/checkout_page.dart';
import 'package:gerenciamento_rotas_web/pages/course_detail_page.dart';
import 'package:gerenciamento_rotas_web/pages/course_list_page.dart';
import 'package:gerenciamento_rotas_web/pages/home_page.dart';
import 'package:gerenciamento_rotas_web/pages/login_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    CustomRoute(page: CourseListPage,path: "/courses",transitionsBuilder: TransitionsBuilders.fadeIn,maintainState: false),
    AutoRoute(page: CourseDetailPage,path: "/courses/:id"),
    AutoRoute(page: CheckoutPage,path: "/checkout",guards: [CheckIfLoggedIn]),
    AutoRoute(page: LoginPage,path: "/login"),
    RedirectRoute(path: "/users", redirectTo: "/"),
    RedirectRoute(path: "*", redirectTo: "/")
  ],
)
class $AppRouter {}