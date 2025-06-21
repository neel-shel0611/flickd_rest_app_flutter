import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  final VoidCallback onInitializationComplete;

  const SplashPage({Key? key, required this.onInitializationComplete})
    : super(key: key);

  @override
  State<StatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    // Simulate initialization, then trigger callback
    Future.delayed(Duration(seconds: 1)).then(
      (_) => widget.onInitializationComplete(),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage("assets/images/logo.png"),
            ),
          ),
        ),
      ),
    );
  }
}
