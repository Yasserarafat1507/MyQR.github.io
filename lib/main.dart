import 'package:flutter/material.dart';
import 'package:qr_project_skl_3/screen/hehe.dart';
import 'package:qr_project_skl_3/screen/home_screen.dart';
import 'package:qr_project_skl_3/screen/qr_generator_screen.dart';
import 'package:qr_project_skl_3/screen/qr_scanner_screen.dart';
import 'package:qr_project_skl_3/screen/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Manrope',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const HomeScreen(),
        '/create': (context) => const QrGeneratorScreen(),
        '/scan': (context) => const QrScannerScanScreen(),
        '/hehe': (context) => const Hehe(),
      },
      initialRoute: '/',
    );
  }
}
