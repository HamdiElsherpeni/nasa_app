import 'package:go_router/go_router.dart';
import 'package:nasa_app/futures/auth/presentation/view/forget_password_view.dart';
import 'package:nasa_app/futures/auth/presentation/view/log_in_view.dart';
import 'package:nasa_app/futures/auth/presentation/view/sin_up_view.dart';
import 'package:nasa_app/futures/home/presentation/view/home_view.dart';
import 'package:nasa_app/futures/home/presentation/view/result_view.dart';
import 'package:nasa_app/futures/home/presentation/view/setteing_view.dart';
import 'package:nasa_app/futures/home/presentation/view/uploda_view.dart';
import 'package:nasa_app/futures/on_bording/presentation/view/on_bording_view.dart';
import 'package:nasa_app/futures/splash/presentation/view/splash_view.dart';

class AppRouter {
  static const String onBording = '/onBording';
  static const String logInView = '/logInView';
  static const String sinUpView = '/sinUpView';
  static const String forgetPass = '/forgetPass';
  static const String homeView = '/homeView';
  static const String uplodaView = '/uplodaView';
  static const String resultView = '/resultView';
  static const String settingView = '/settingView';
  

  static GoRouter route = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: onBording, builder: (context, state) => OnBordingView()),
      GoRoute(path: uplodaView, builder: (context, state) => UplodaView()),
      GoRoute(path: resultView, builder: (context, state) => ResultView()),
      GoRoute(path: settingView, builder: (context, state) => SetteingView()),

      GoRoute(path: logInView, builder: (context, state) => LogInView()),
      GoRoute(path: sinUpView, builder: (context, state) => SinUpView()),
      GoRoute(path: homeView, builder: (context, state) => HomeView()),

      GoRoute(
        path: forgetPass,
        builder: (context, state) => ForgetPasswordView(),
      ),
    ],
  );
}
