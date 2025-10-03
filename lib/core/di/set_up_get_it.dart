import 'package:get_it/get_it.dart';
import 'package:nasa_app/core/networking/api_services.dart';
import 'package:nasa_app/core/networking/dio_factory.dart';
import 'package:nasa_app/futures/auth/data/repo/auth_repo_impl.dart';

final GetIt getIt = GetIt.instance;

void setUpGetIt() {
  final dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  getIt.registerLazySingleton<AuthRepoImpl>(
    () => AuthRepoImpl(getIt<ApiService>()),
  );
}
