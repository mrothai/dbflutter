import 'package:dbflutter/pages/aboutpage.dart';
import 'package:dbflutter/pages/contactpage.dart';
import 'package:dbflutter/pages/homepage.dart';
import 'package:dbflutter/pages/homestack.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: const HomePage(),
      initialRoute: "/",
      routes: {
        //"/": (context) => const HomePage(),
        //"/about": (context) => const AboutPage(),
        //'/contact': (context) => const ContactPage(),
        // เลปี่ยนไปใช้ HomeStack แทน
        "/": (context) => const HomeStack(),
      },
    );
  }
}
