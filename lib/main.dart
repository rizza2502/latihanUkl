import 'package:flutter/material.dart';
import 'package:tukang_com/models/akun_page.dart';
import 'package:tukang_com/pages/dashboard_page.dart';
import 'package:tukang_com/pages/pesanan_page.dart';
import 'package:tukang_com/pages/splash_screen.dart';

void main() {
  runApp(const TukangComApp());
}

class TukangComApp extends StatelessWidget {
  const TukangComApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tukang.com - Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.lightBlue,
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
      routes: {
        '/dashboard': (_) => DashboardPage(),
        '/pesanan': (_) => PesananPage(),
        '/akun': (_) => AkunPage(),
      },
    );
  }
}