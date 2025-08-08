import 'package:flutter/material.dart';
import 'package:iinkedin_clone/pages/login_page.dart';
import 'package:iinkedin_clone/pages/home_page.dart';
//import 'package:iinkedin_clone/pages/drawer.dart';
import 'package:iinkedin_clone/pages/massage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  final String? title;
  const MyApp({super.key, this.title});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Linkedin',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: const LoginPage(),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        // '/drawer': (context) => const Drawer(),
        '/massage': (context) => const MyWidget(),
      },
    );
  }
}
