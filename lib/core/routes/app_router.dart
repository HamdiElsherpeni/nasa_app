import 'package:go_router/go_router.dart';
import 'package:nasa_app/futures/auth/presentation/view/forget_password_view.dart';
import 'package:nasa_app/futures/auth/presentation/view/log_in_view.dart';
import 'package:nasa_app/futures/auth/presentation/view/sin_up_view.dart';
import 'package:nasa_app/futures/on_bording/presentation/view/on_bording_view.dart';
import 'package:nasa_app/futures/splash/presentation/view/splash_view.dart';

class AppRouter {
  static const String onBording = '/onBording';
  static const String logInView = '/logInView';
  static const String sinUpView = '/sinUpView';
  static const String forgetPass = '/forgetPass';

  static GoRouter route = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: onBording, builder: (context, state) => OnBordingView()),
      GoRoute(path: logInView, builder: (context, state) => LogInView()),
      GoRoute(path: sinUpView, builder: (context, state) => SinUpView()),
      GoRoute(
        path: forgetPass,
        builder: (context, state) => ForgetPasswordView(),
      ),
    ],
  );
}
