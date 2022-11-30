import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoigg/constants/routers.dart';

import '../services/auth_service.dart';

class EnsureAuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    // isAuthenticated = globalController.authenticated;
    if (!AuthService.to.isLoggedInValue) {
      return const RouteSettings(name: kAuthenticate);
    }
    return null;
  }
}

class EnsureNotAuthedMiddleware extends GetMiddleware {
  @override
  Future<GetNavConfig?> redirectDelegate(GetNavConfig route) async {
    if (AuthService.to.isLoggedInValue) {
      //NEVER navigate to auth screen, when user is already authed
      return null;

      //OR redirect user to another screen
      //return RouteDecoder.fromRoute(Routes.PROFILE);
    }
    return await super.redirectDelegate(route);
  }
}
