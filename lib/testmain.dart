// void main() => runApp(MyApp());
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testenv/Academics/CGPA/mainGPA.dart';
import 'Academics/mainAcademic.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'testing',
      routes: {
        // // '/': (context) => const FirstScreen(),
        '/cgpa': (context) => MainCGPA(),
        // '/FinanceHome': (context) => mainFinance(),
        // '/AcademicHome': (context) => Screen2(),
        // '/CareerHome': (context) => Screen2(),
        // '/HobbiesHome': (context) => Screen2(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: mainAcademic(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// class HomeScreen extends StatefulWidget {
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(
//         const Duration(milliseconds: 2200),
//         () => Navigator.pushReplacement(
//             context, MaterialPageRoute(builder: (context) => AuthScreen())));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         // appBar: AppBar(title: const Text('Home Screen')),
//         body: Center(
//       child: Container(
//         color: Colors.white,
//         child: Lottie.asset(
//           'assets/notetakingAnimation.json',
//           repeat: false,
//           reverse: false,
//           animate: true,
//         ),
//       ),
//     ));
//   }
// }
