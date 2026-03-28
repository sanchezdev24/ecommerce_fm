

import 'package:auth/src/composition/router/auth_routes.dart';
import 'package:core/core.dart';

class AuthModules extends FeatureModule {
  @override
  void register(GetIt it) {
  }

  @override
  List<RouteBase> routes() => authRoutes;
}