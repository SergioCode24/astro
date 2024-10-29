import 'package:astro/registration.dart';
import 'package:flutter/material.dart';
import 'bottom_navigation.dart';
import 'login.dart';
import 'main_page.dart';
import 'main_page_art.dart';
import 'main_user.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
      routes: {
        '/main': (context) => const MainPage(),
        '/UserData': (context) => const MainUser(),
        '/articl': (context) => const MainPageArticle(),
        '/reg': (context) => Reg(),
        '/log': (context) => Login(),
        '/BottomNavig': (context) => const BottomNavigationPage()
      },
      initialRoute: '/log',
    );
  }
}
