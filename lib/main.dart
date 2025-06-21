import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flickd_rest_app_flutter/pages/main_page.dart';
import 'package:flickd_rest_app_flutter/pages/splash_page.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flickd",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashWrapper(), // <- new stateful wrapper
    );
  }
}

class SplashWrapper extends StatefulWidget {
  @override
  State<SplashWrapper> createState() => _SplashWrapperState();
}

class _SplashWrapperState extends State<SplashWrapper> {
  @override
  Widget build(BuildContext context) {
    return SplashPage(
      onInitializationComplete: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const MainPage()),
        );
      },
    );
  }
}


