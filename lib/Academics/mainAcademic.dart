import 'package:flutter/material.dart';
import './getTiles.dart';

class mainAcademic extends StatelessWidget {
  const mainAcademic({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text(
          "Academics",
          style: TextStyle(color: Colors.green[600], fontSize: 24),
        ),
        backgroundColor: Colors.grey[200],
        leading: IconButton(
            onPressed: () {},
            icon: SizedBox(
              height: 40,
              width: 40,
              child: Image.asset('assets/academicAppBar.png'),
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: deviceSize.height * 0.25,
            ),
            GetTiles(
              tileName: "CGPA",
              titleColor: Colors.red,
              iconLocation: "assets/academicCGPA.png",
            ),
            GetTiles(
              tileName: "S.W.O.T",
              titleColor: Colors.purple,
              iconLocation: "assets/academicSWOT.png",
            ),
            GetTiles(
              tileName: "Scheduler",
              titleColor: Colors.blue,
              iconLocation: "assets/academicSchedule.png",
            ),
            // GetTiles(
            //   tileName: "Notes",
            //   titleColor: Colors.orange,
            //   iconLocation: "assets/academicNotes.png",
            // ),
          ],
        ),
      ),
    );
  }
}
