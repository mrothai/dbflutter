import 'package:dbflutter/pages/aboutpage.dart';
import 'package:dbflutter/pages/companypage.dart';
import 'package:dbflutter/pages/contactpage.dart';
import 'package:dbflutter/pages/homepage.dart';
import 'package:flutter/material.dart';

class HomeStack extends StatefulWidget {
  const HomeStack({super.key});

  @override
  State<HomeStack> createState() => _HomeStackState();
}

class _HomeStackState extends State<HomeStack> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: 'homestack/home',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case 'homestack/home':
            builder = (BuildContext context) => const HomePage();
            break;
          case 'homestack/about':
            builder = (BuildContext context) => const AboutPage();
            break;
          case 'homestack/contact':
            builder = (BuildContext context) => const ContactPage();
            break;
          case 'homestack/company':
            builder = (BuildContext context) => const CompanyPage();
            break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute<void>(builder: builder, settings: settings);
      },
    );
  }
}
