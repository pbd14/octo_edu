// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/cupertino.dart' as _i7;
import 'package:flutter/material.dart' as _i6;

import 'Screens/CourseScreen/course_detail_screen.dart' as _i4;
import 'Screens/FavouritesScreen/favourites_screen.dart' as _i3;
import 'Screens/HomeScreen/home_screen.dart' as _i2;
import 'Screens/MainScreen/main_screen.dart' as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    MainScreen.name: (routeData) {
      final args = routeData.argsAs<MainScreenArgs>(
          orElse: () => const MainScreenArgs());
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.MainScreen(
          key: args.key,
          tabNum: args.tabNum,
        ),
      );
    },
    HomeScreen.name: (routeData) {
      final args = routeData.argsAs<HomeScreenArgs>(
          orElse: () => const HomeScreenArgs());
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.HomeScreen(
          key: args.key,
          error: args.error,
        ),
      );
    },
    FavouritesScreen.name: (routeData) {
      final args = routeData.argsAs<FavouritesScreenArgs>(
          orElse: () => const FavouritesScreenArgs());
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.FavouritesScreen(
          key: args.key,
          error: args.error,
        ),
      );
    },
    CourseDetailScreen.name: (routeData) {
      final args = routeData.argsAs<CourseDetailScreenArgs>();
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.CourseDetailScreen(
          key: args.key,
          error: args.error,
          courseTitle: args.courseTitle,
          courseImage: args.courseImage,
        ),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          MainScreen.name,
          path: '/',
        ),
        _i5.RouteConfig(
          HomeScreen.name,
          path: 'home',
        ),
        _i5.RouteConfig(
          FavouritesScreen.name,
          path: 'favourites',
        ),
        _i5.RouteConfig(
          CourseDetailScreen.name,
          path: 'courses/detail',
        ),
      ];
}

/// generated route for
/// [_i1.MainScreen]
class MainScreen extends _i5.PageRouteInfo<MainScreenArgs> {
  MainScreen({
    _i7.Key? key,
    int tabNum = 0,
  }) : super(
          MainScreen.name,
          path: '/',
          args: MainScreenArgs(
            key: key,
            tabNum: tabNum,
          ),
        );

  static const String name = 'MainScreen';
}

class MainScreenArgs {
  const MainScreenArgs({
    this.key,
    this.tabNum = 0,
  });

  final _i7.Key? key;

  final int tabNum;

  @override
  String toString() {
    return 'MainScreenArgs{key: $key, tabNum: $tabNum}';
  }
}

/// generated route for
/// [_i2.HomeScreen]
class HomeScreen extends _i5.PageRouteInfo<HomeScreenArgs> {
  HomeScreen({
    _i7.Key? key,
    String error = 'Something Went Wrong',
  }) : super(
          HomeScreen.name,
          path: 'home',
          args: HomeScreenArgs(
            key: key,
            error: error,
          ),
        );

  static const String name = 'HomeScreen';
}

class HomeScreenArgs {
  const HomeScreenArgs({
    this.key,
    this.error = 'Something Went Wrong',
  });

  final _i7.Key? key;

  final String error;

  @override
  String toString() {
    return 'HomeScreenArgs{key: $key, error: $error}';
  }
}

/// generated route for
/// [_i3.FavouritesScreen]
class FavouritesScreen extends _i5.PageRouteInfo<FavouritesScreenArgs> {
  FavouritesScreen({
    _i7.Key? key,
    String error = 'Something Went Wrong',
  }) : super(
          FavouritesScreen.name,
          path: 'favourites',
          args: FavouritesScreenArgs(
            key: key,
            error: error,
          ),
        );

  static const String name = 'FavouritesScreen';
}

class FavouritesScreenArgs {
  const FavouritesScreenArgs({
    this.key,
    this.error = 'Something Went Wrong',
  });

  final _i7.Key? key;

  final String error;

  @override
  String toString() {
    return 'FavouritesScreenArgs{key: $key, error: $error}';
  }
}

/// generated route for
/// [_i4.CourseDetailScreen]
class CourseDetailScreen extends _i5.PageRouteInfo<CourseDetailScreenArgs> {
  CourseDetailScreen({
    _i7.Key? key,
    String error = 'Something Went Wrong',
    required String courseTitle,
    required String courseImage,
  }) : super(
          CourseDetailScreen.name,
          path: 'courses/detail',
          args: CourseDetailScreenArgs(
            key: key,
            error: error,
            courseTitle: courseTitle,
            courseImage: courseImage,
          ),
        );

  static const String name = 'CourseDetailScreen';
}

class CourseDetailScreenArgs {
  const CourseDetailScreenArgs({
    this.key,
    this.error = 'Something Went Wrong',
    required this.courseTitle,
    required this.courseImage,
  });

  final _i7.Key? key;

  final String error;

  final String courseTitle;

  final String courseImage;

  @override
  String toString() {
    return 'CourseDetailScreenArgs{key: $key, error: $error, courseTitle: $courseTitle, courseImage: $courseImage}';
  }
}
