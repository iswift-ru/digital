// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

import '../../features/splash/presentation/push_list.dart' as _i1;

class Router extends _i2.RootStackRouter {
  Router([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    PushListRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.PushList());
    }
  };

  @override
  List<_i2.RouteConfig> get routes =>
      [_i2.RouteConfig(PushListRoute.name, path: '/push-list')];
}

/// generated route for
/// [_i1.PushList]
class PushListRoute extends _i2.PageRouteInfo<void> {
  const PushListRoute() : super(PushListRoute.name, path: '/push-list');

  static const String name = 'PushListRoute';
}
