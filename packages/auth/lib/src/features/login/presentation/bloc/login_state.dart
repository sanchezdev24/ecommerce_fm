part of 'login_bloc.dart';

class LoginState extends Equatable {
  final bool isLoading;
  final bool isError;
  final String? errorMsg;
  final bool isSuccess;

  const LoginState({this.isLoading = false, this.isError = false, this.errorMsg, this.isSuccess = false});
  @override
  List<Object?> get props => [isLoading, isError, errorMsg, isSuccess];
}

class LoginStateIsLoading extends LoginState {
  const LoginStateIsLoading(): super(isLoading: true);
}

class LoginStateIsError extends LoginState {
  const LoginStateIsError(String errorMsg): super(isLoading: false, isError: true, errorMsg: errorMsg);
}

class LoginStateIsSuccess extends LoginState {
  const LoginStateIsSuccess(): super(isLoading: false, isError: false, isSuccess: true);
}
