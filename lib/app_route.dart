import 'package:auto_route/auto_route.dart';
import 'package:edu/Screens/CourseScreen/course_detail_screen.dart';
import 'package:edu/Screens/FavouritesScreen/favourites_screen.dart';
import 'package:edu/Screens/HomeScreen/home_screen.dart';
import 'package:edu/Screens/MainScreen/main_screen.dart';

// flutter packages pub run build_runner build 
@MaterialAutoRouter(              
  replaceInRouteName: 'Page,Route',              
  routes: <AutoRoute>[              
    AutoRoute(page: MainScreen, initial: true),              
    AutoRoute(page: HomeScreen, path: 'home'),
    AutoRoute(page: FavouritesScreen, path: 'favourites'), 
    AutoRoute(page: CourseDetailScreen, path: 'courses/detail'),              
  ],              
) 
class $AppRouter {}              