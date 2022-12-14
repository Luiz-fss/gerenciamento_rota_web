import 'package:auto_route/auto_route.dart';

class CheckIfLoggedIn extends AutoRouteGuard{
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    //vai abrir a tela, e false vai ignorar o comando de abrir
    //resolver.next(true);

    if(checkIfLoggedIn()){
      resolver.next(true);
    }else{
      router.pushNamed("/login");
    }
  }
}

bool checkIfLoggedIn(){
  return false;
}