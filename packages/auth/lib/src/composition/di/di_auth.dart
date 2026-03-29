import 'package:auth/src/features/login/presentation/bloc/login_bloc.dart';
import 'package:core/core.dart';

void registerAuthModules(GetIt it) {
  it.registerFactory<LoginBloc>(() => LoginBloc());
}