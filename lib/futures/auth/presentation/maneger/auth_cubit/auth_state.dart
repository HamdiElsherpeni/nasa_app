part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

//sinIn Stasts
final class SinInLoadin extends AuthState {}
final class SinInFailer extends AuthState {
  final String errorMassege;

  SinInFailer({required this.errorMassege});
}
final class SinInSuceess extends AuthState {}


