import 'package:flutter/material.dart';
import 'dashboard_page.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context, 
        MaterialPageRoute(builder: (_) => DashboardPage()),
        );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 250,
              height: 250,
              child: Image.asset(
                'assets/images/logo2.png',
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  return Icon(Icons.build_circle, size: 100, color: Colors.white);
                },
              ),
            ),
            SizedBox(height: 8),
            Text('Cari tukang terbaik untuk rumahmu', style: TextStyle(color: Colors.white70, fontSize: 20)),
          ],
        ),
      ),
    );
  }
}