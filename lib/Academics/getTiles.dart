import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'CGPA/mainGPA.dart';

class GetTiles extends StatelessWidget {
  // GetTiles({super.key});

  final String iconLocation;
  final String tileName;
  final Color? titleColor;
  final String route = "";

  GetTiles({
    required this.iconLocation,
    required this.tileName,
    required this.titleColor,
    // required this.route,
  });
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final tabWidth = ((deviceSize.width * 0.7));
    final tabHeight = 60.0;
    return GestureDetector(
      onTap: () {
        print("tapped");
        Navigator.pushNamed(context, '/cgpa');
      },
      child: Container(
        width: tabWidth,
        height: tabHeight,
        margin: EdgeInsets.only(
            left: ((deviceSize.width - tabWidth) / 2), top: 15, bottom: 8),
        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
        decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade600,
                offset: Offset(5, 5),
                blurRadius: 15,
                spreadRadius: 1,
              ),
              const BoxShadow(
                color: Colors.white,
                offset: Offset(-5, -5),
                blurRadius: 15,
                spreadRadius: 1,
              )
            ]),
        child: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              margin: EdgeInsets.only(left: tabWidth * 0.1),
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(iconLocation))),
            ),
            Container(
              width: tabWidth * 0.15,
            ),
            Text(
              tileName,
              style: TextStyle(fontSize: 28, color: titleColor),
            ),
          ],
        ),
      ),
    );
  }
}
