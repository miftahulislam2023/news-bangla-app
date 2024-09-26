import 'package:flutter/material.dart';
import 'package:newsbangla/screens/about_view.dart';
import 'package:newsbangla/screens/home_view.dart';
import 'package:newsbangla/screens/news_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff009190), // AppBar color
        scaffoldBackgroundColor: const Color(0xfff3fffb),
      ),
      routes:<String, WidgetBuilder> {
        '/news-view': (BuildContext context) => const NewsView(),
        '/about': (BuildContext context) => const AboutView(),
      },
      home: const HomeView()
    );
  }
}
