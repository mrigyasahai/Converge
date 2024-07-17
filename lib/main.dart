// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, no_leading_underscores_for_local_identifiers

//Packages
import 'package:flutter/material.dart';

//Service
import './services/navigation_service.dart';

//Pages
import './pages/splash_page.dart';
import './pages/login_page.dart';

void main() {
  runApp(
    SplashPage(
      key: UniqueKey(),
      onInitializationComplete: () {
        NavigationService.navigatorKey.currentState?.pushReplacementNamed('/login');
      },
    ),
  );
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Converge',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(36, 35, 49, 1.0),
        ),
        scaffoldBackgroundColor: const Color.fromRGBO(36, 35, 49, 1.0),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color.fromRGBO(30, 29, 37, 1.0),
        ),
      ),
      navigatorKey: NavigationService.navigatorKey,
      initialRoute: '/login',
      routes: {
        '/login': (BuildContext _context) => LoginPage(),
      },
    );
  }
}
