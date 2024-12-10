import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:qr_project_skl_3/screen/hehe.dart';
import 'package:qr_project_skl_3/screen/home_screen.dart';
import 'package:qr_project_skl_3/screen/qr_generator_screen.dart';
import 'package:qr_project_skl_3/screen/qr_scanner_screen.dart';
import 'package:qr_project_skl_3/screen/splash_screen.dart';

void main() {
  runApp(DevicePreview(
      enabled: true,
      defaultDevice: Devices.ios.iPhone13ProMax,
      devices: [Devices.ios.iPhone13ProMax],
      builder: (context) => MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
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
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
    );
  }
}
