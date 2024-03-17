import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/splash/splash_page.dart';
import 'package:my_portfolio/utilities/constants';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bishal',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: bgColor,
        useMaterial3: true,
      ),
      home: const SplashView(),
    );
  }
}
