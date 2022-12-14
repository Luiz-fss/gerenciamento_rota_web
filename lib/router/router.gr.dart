// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../pages/course_detail_page.dart' as _i3;
import '../pages/course_list_page.dart' as _i2;
import '../pages/home_page.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    CourseListRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<CourseListRouteArgs>(
          orElse: () => CourseListRouteArgs(
              search: queryParams.optString('search'),
              page: queryParams.optInt('page')));
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.CourseListPage(
              key: args.key, search: args.search, page: args.page));
    },
    CourseDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<CourseDetailRouteArgs>(
          orElse: () => CourseDetailRouteArgs(id: pathParams.getString('id')));
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.CourseDetailPage(key: args.key, id: args.id));
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(HomeRoute.name, path: '/'),
        _i4.RouteConfig(CourseListRoute.name, path: '/courses'),
        _i4.RouteConfig(CourseDetailRoute.name, path: '/courses/:id'),
        _i4.RouteConfig('/users#redirect',
            path: '/users', redirectTo: '/', fullMatch: true),
        _i4.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.CourseListPage]
class CourseListRoute extends _i4.PageRouteInfo<CourseListRouteArgs> {
  CourseListRoute({_i5.Key? key, String? search, int? page})
      : super(CourseListRoute.name,
            path: '/courses',
            args: CourseListRouteArgs(key: key, search: search, page: page),
            rawQueryParams: {'search': search, 'page': page});

  static const String name = 'CourseListRoute';
}

class CourseListRouteArgs {
  const CourseListRouteArgs({this.key, this.search, this.page});

  final _i5.Key? key;

  final String? search;

  final int? page;

  @override
  String toString() {
    return 'CourseListRouteArgs{key: $key, search: $search, page: $page}';
  }
}

/// generated route for
/// [_i3.CourseDetailPage]
class CourseDetailRoute extends _i4.PageRouteInfo<CourseDetailRouteArgs> {
  CourseDetailRoute({_i5.Key? key, required String id})
      : super(CourseDetailRoute.name,
            path: '/courses/:id',
            args: CourseDetailRouteArgs(key: key, id: id),
            rawPathParams: {'id': id});

  static const String name = 'CourseDetailRoute';
}

class CourseDetailRouteArgs {
  const CourseDetailRouteArgs({this.key, required this.id});

  final _i5.Key? key;

  final String id;

  @override
  String toString() {
    return 'CourseDetailRouteArgs{key: $key, id: $id}';
  }
}
