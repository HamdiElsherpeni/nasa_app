import 'package:go_router/go_router.dart';

void coustemNavigatPush(context,String path) {
     GoRouter.of(context).push(path);
       
  }
  void coustemNavigatPushReplace(context,String path) {
     GoRouter.of(context).pushReplacement(path);
       
  }

  void customNavigatPop(context) {
    GoRouter.of(context).pop();
  }