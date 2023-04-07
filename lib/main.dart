import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // if (Platform.isAndroid) {
    //   const SystemUiOverlayStyle systemUiOverlayStyle =
    //   SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    //   SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    // }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Life Way',
      theme: ThemeData(
        fontFamily: "Jua",
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

