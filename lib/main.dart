import 'dart:async';

import 'package:flutter/material.dart';
import 'package:testenv/FinanceModule/mainFinance.dart';
import 'package:testenv/screen2.dart';
import 'AuthScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:lottie/lottie.dart';
import 'package:async/async.dart';

// void main() => runApp(MyApp());
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DOCKET',
      routes: {
        // '/': (context) => const FirstScreen(),
        '/FinanceHome': (context) => mainFinance(),
        '/AcademicHome': (context) => Screen2(),
        '/CareerHome': (context) => Screen2(),
        '/HobbiesHome': (context) => Screen2(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(milliseconds: 2200),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => AuthScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: const Text('Home Screen')),
        body: Center(
      child: Container(
        color: Colors.white,
        child: Lottie.asset(
          'assets/notetakingAnimation.json',
          repeat: false,
          reverse: false,
          animate: true,
        ),
      ),
    ));
  }
}
