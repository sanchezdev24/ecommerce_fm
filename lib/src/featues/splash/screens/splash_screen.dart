import 'package:auth/auth.dart';
import 'package:core/core.dart';
import 'package:ecommerce_fm/src/featues/splash/bloc/splash_bloc.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    context.read<SplashBloc>().add(SplashEventGoLogin());
  }
  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(listener: (context, state) {
      if(state is SplashStateIsGoLogin) {
        context.push(AuthRoutesPaths.login);
      }
    },child: Center(child: Text('Splash'),),);
  }
}