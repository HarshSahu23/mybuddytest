import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:testenv/Academics/CGPA/CGPA.dart';
import 'package:testenv/Academics/CGPA/GPA.dart';
import 'package:testenv/Academics/CGPA/Pointer.dart';
import 'package:testenv/Academics/CGPA/Retainer.dart';
import './input_field.dart';

class MainCGPA extends StatefulWidget {
  const MainCGPA({super.key});

  @override
  State<MainCGPA> createState() => _MainCGPAState();
}

class _MainCGPAState extends State<MainCGPA> {
  int _selectedPageIndex = 0;
  final pages = [GPA(), CGPA(), Pointer(), Retainer()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.calculate,
            color: Colors.black,
            size: 32,
          ),
          backgroundColor: Colors.grey.shade300,
          title: const Text(
            "Grade Tracker",
            style: TextStyle(
                fontSize: 28,
                color: Colors.purple,
                fontWeight: FontWeight.w400),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          selectedItemColor: Colors.blueAccent,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey.shade500,
          selectedLabelStyle: const TextStyle(fontSize: 18, color: Colors.blue),
          unselectedLabelStyle:
              const TextStyle(fontSize: 14, color: Colors.grey),
          currentIndex: _selectedPageIndex,
          onTap: (int index) {
            setState(() {
              _selectedPageIndex = index;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.text_snippet_outlined,
              ),
              label: "GPA",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.bar_chart,
                ),
                label: "CGPA"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.double_arrow_sharp,
                ),
                label: "9 Pointer"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.align_vertical_center_rounded,
                ),
                label: "Retainer"),
          ],
        ),
        body: pages[_selectedPageIndex]);
  }

  // getRowInput(int inCredit, String inGrade) {
  //   return Row(
  //     children: [
  //       Expanded(
  //           child: MyInputField(
  //         title: "",
  //         hint: "$inCredit credits",
  //         widget: DropdownButton(
  //           menuMaxHeight: 150,
  //           onChanged: (String? newValue) {
  //             setState(() {
  //               _inputCredit.add(int.parse(newValue!));
  //               inCredit = int.parse(newValue);
  //             });
  //           },
  //           underline: Container(
  //             height: 0,
  //           ),
  //           icon: const Icon(Icons.keyboard_arrow_down),
  //           iconSize: 32,
  //           elevation: 4,
  //           style: TextStyle(
  //               fontSize: 14,
  //               fontWeight: FontWeight.w400,
  //               color: Colors.grey[700]),
  //           items: creditsList.map<DropdownMenuItem<String>>((int value) {
  //             return DropdownMenuItem<String>(
  //               value: value.toString(),
  //               child: Text("$value"),
  //             );
  //           }).toList(),
  //         ),
  //       )),
  //       const SizedBox(
  //         width: 12,
  //       ),
  //       Expanded(
  //           child: MyInputField(
  //         title: " ",
  //         hint: "Grade : $inGrade",
  //         widget: DropdownButton(
  //           menuMaxHeight: 150,
  //           onChanged: (String? newValue) {
  //             setState(() {
  //               _inputGrade.add(newValue!);

  //               inGrade = newValue;
  //             });
  //           },
  //           underline: Container(
  //             height: 0,
  //           ),
  //           icon: const Icon(Icons.keyboard_arrow_down),
  //           iconSize: 32,
  //           elevation: 4,
  //           style: TextStyle(
  //               fontSize: 14,
  //               fontWeight: FontWeight.w400,
  //               color: Colors.grey[700]),
  //           items: gradeList.map<DropdownMenuItem<String>>((String value) {
  //             return DropdownMenuItem<String>(
  //               value: value.toString(),
  //               child: Text(value),
  //             );
  //           }).toList(),
  //         ),
  //       ))
  //     ],
  //   );
  // }
}
