
import 'package:core/core.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState>{
  SplashBloc(): super( SplashState()) {
    //on<SplashEventStarted>(_onStarted);
    on<SplashEventGoLogin>(_onGoLogin);
  }

  //void _onStarted(SplashEventStarted event, Emitter<SplashState> emit) {}

  void _onGoLogin(SplashEventGoLogin event, Emitter<SplashState> emit) {
    emit(SplashStateIsGoLogin());
  }
}