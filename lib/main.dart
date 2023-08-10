import 'package:flutter/material.dart';
import 'package:match_schedule/screens/b_n.dart';
import 'package:match_schedule/screens/connect_with_us.dart';
import 'package:match_schedule/screens/news_details.dart';
import 'package:match_schedule/screens/notifications.dart';
import 'package:match_schedule/screens/welcome.dart';
import 'package:match_schedule/screens/who_are_we.dart';

void main() async{
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/welcome',
      routes: {
        '/welcome': (context) => const Welcome(),
        '/b_n': (context) => const BN(),
        '/connect_with_us': (context) => const ConnectWithUs(),
        '/who_are_we': (context) => const WhoAreWe(),
        '/notifications': (context) => const Notifications(),
        '/news_details': (context) => const NewsDetails(),

      },
    );
  }
}

