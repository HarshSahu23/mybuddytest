import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/services.dart';

class CGPA extends StatefulWidget {
  const CGPA({super.key});

  @override
  State<CGPA> createState() => _CGPAState();
}

class _CGPAState extends State<CGPA> {
  double nowGPA = 0;
  int nowSemCredit = 0;
  double oldCGPA = 0;
  int oldTotalCredits = 0;

  TextEditingController TEC_nowGPA = TextEditingController();
  TextEditingController TEC_nowSemCredit = TextEditingController();
  TextEditingController TEC_oldCGPA = TextEditingController();
  TextEditingController TEC_oldTotalCredits = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      margin: EdgeInsets.fromLTRB(20, 20, 20, 5),
      padding: EdgeInsets.all(5),
      child: ListView(
        children: [
          _myInputForCGPA(TEC_nowGPA, "Current Semester GPA", context),
          _myInputForCGPA(
              TEC_nowSemCredit, "Credits finished this semester", context),
          _myInputForCGPA(TEC_oldCGPA, "Previous Semester CGPA", context),
          _myInputForCGPA(TEC_oldTotalCredits,
              "Credits finished before this Semester", context),
          GestureDetector(
            onTap: () {
              print("Gesture Detected");
              double a = (double.parse(TEC_nowGPA.text.toString())) *
                  (int.parse(TEC_nowSemCredit.text.toString()));
              double b = (double.parse(TEC_oldCGPA.text.toString())) *
                  (int.parse(TEC_oldTotalCredits.text.toString()));
              double c = (double.parse(TEC_nowSemCredit.text.toString())) +
                  (double.parse(TEC_oldTotalCredits.text.toString()));
              showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.transparent,
                  // barrierColor: Colors.black.withAlpha(1),
                  builder: ((context) {
                    return Container(
                      height: 350,
                      width: double.infinity,
                      // color: Colors.blueAccent,
                      child: Center(
                          child: Text(
                        "CGPA : ${((a + b) / c).toStringAsFixed(2)}",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 50),
                      )),
                    );
                  }));
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 15, 0, 5),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blueAccent),
              child: const Center(
                child: Text(
                  "Calculate",
                  style: TextStyle(color: Colors.white, fontSize: 26),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  _myInputForCGPA(
      TextEditingController TEC, String hint, BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 20),
        height: 50,
        width: double.infinity,
        child: TextFormField(
          onChanged: (hint) {
            setState(() {
              hint = TEC.text;
            });
          },
          autofocus: false,
          readOnly: false,
          cursorColor: Colors.grey[700],
          controller: TEC,
          keyboardType: TextInputType.number,
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400,
              color: Colors.grey[700]),
          decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey[700]),
              focusedBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.grey.shade300, width: 0)),
              enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.grey.shade300, width: 0))),
        ));
  }

  _getInputFields() {
    return Center(
      child: Shortcuts(
        shortcuts: const <ShortcutActivator, Intent>{
          // Pressing space in the field will now move to the next field.
          SingleActivator(LogicalKeyboardKey.space): NextFocusIntent(),
        },
        child: FocusTraversalGroup(
          child: Form(
            autovalidateMode: AutovalidateMode.always,
            onChanged: () {
              Form.of(primaryFocus!.context!)!.save();
            },
            child: Wrap(
              children: List<Widget>.generate(5, (int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ConstrainedBox(
                    constraints: BoxConstraints.tight(const Size(200, 50)),
                    child: TextFormField(
                      onSaved: (String? value) {
                        debugPrint('Value for field $index saved as "$value"');
                      },
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}

// imp
//       body: Container(
//         margin: const EdgeInsets.fromLTRB(20, 10, 20, 5),
//         padding: EdgeInsets.all(5),
//         child: ListView(children: [
//           Row(
//             //Const Header
//             children: [
//               Container(
//                 padding: const EdgeInsets.only(top: 10),
//                 height: 40,
//                 width: MediaQuery.of(context).size.width * 0.4,
//                 child: const Center(
//                   child: Text(
//                     " Credits Obtained",
//                     style: TextStyle(fontSize: 22, color: Colors.green),
//                   ),
//                 ),
//               ),
//               Expanded(child: Container()),
//               Container(
//                 padding: const EdgeInsets.only(top: 10),
//                 height: 40,
//                 width: MediaQuery.of(context).size.width * 0.4,
//                 child: const Center(
//                   child: Text(
//                     "Grade Points",
//                     style: TextStyle(fontSize: 22, color: Colors.green),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Row(
//             //1st Row
//             children: [
//               Expanded(
//                   child: MyInputField(
//                 title: "",
//                 hint: "$inCredit1 credits",
//                 widget: DropdownButton(
//                   menuMaxHeight: 150,
//                   onChanged: (String? newValue) {
//                     setState(() {
//                       _inputCredit.add(int.parse(newValue!));
//                       inCredit1 = int.parse(newValue);
//                     });
//                   },
//                   underline: Container(
//                     height: 0,
//                   ),
//                   icon: const Icon(Icons.keyboard_arrow_down),
//                   iconSize: 32,
//                   elevation: 4,
//                   style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.w400,
//                       color: Colors.grey[700]),
//                   items: creditsList.map<DropdownMenuItem<String>>((int value) {
//                     return DropdownMenuItem<String>(
//                       value: value.toString(),
//                       child: Text("$value"),
//                     );
//                   }).toList(),
//                 ),
//               )),
//               const SizedBox(
//                 width: 12,
//               ),
//               Expanded(
//                   child: MyInputField(
//                 title: " ",
//                 hint: "Grade : $inGrade1",
//                 widget: DropdownButton(
//                   menuMaxHeight: 150,
//                   onChanged: (String? newValue) {
//                     setState(() {
//                       _inputGrade.add(newValue!);

//                       inGrade1 = newValue;
//                     });
//                   },
//                   underline: Container(
//                     height: 0,
//                   ),
//                   icon: const Icon(Icons.keyboard_arrow_down),
//                   iconSize: 32,
//                   elevation: 4,
//                   style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.w400,
//                       color: Colors.grey[700]),
//                   items:
//                       gradeList.map<DropdownMenuItem<String>>((String value) {
//                     return DropdownMenuItem<String>(
//                       value: value.toString(),
//                       child: Text(value),
//                     );
//                   }).toList(),
//                 ),
//               ))
//             ],
//           ),
//           Row(
//             //2nd Row
//             children: [
//               Expanded(
//                   child: MyInputField(
//                 title: "",
//                 hint: "$inCredit2 credits",
//                 widget: DropdownButton(
//                   menuMaxHeight: 150,
//                   onChanged: (String? newValue) {
//                     setState(() {
//                       _inputCredit.add(int.parse(newValue!));
//                       inCredit2 = int.parse(newValue);
//                     });
//                   },
//                   underline: Container(
//                     height: 0,
//                   ),
//                   icon: const Icon(Icons.keyboard_arrow_down),
//                   iconSize: 32,
//                   elevation: 4,
//                   style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.w400,
//                       color: Colors.grey[700]),
//                   items: creditsList.map<DropdownMenuItem<String>>((int value) {
//                     return DropdownMenuItem<String>(
//                       value: value.toString(),
//                       child: Text("$value"),
//                     );
//                   }).toList(),
//                 ),
//               )),
//               const SizedBox(
//                 width: 12,
//               ),
//               Expanded(
//                   child: MyInputField(
//                 title: " ",
//                 hint: "Grade : $inGrade2",
//                 widget: DropdownButton(
//                   menuMaxHeight: 150,
//                   onChanged: (String? newValue) {
//                     setState(() {
//                       _inputGrade.add(newValue!);

//                       inGrade2 = newValue;
//                     });
//                   },
//                   underline: Container(
//                     height: 0,
//                   ),
//                   icon: const Icon(Icons.keyboard_arrow_down),
//                   iconSize: 32,
//                   elevation: 4,
//                   style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.w400,
//                       color: Colors.grey[700]),
//                   items:
//                       gradeList.map<DropdownMenuItem<String>>((String value) {
//                     return DropdownMenuItem<String>(
//                       value: value.toString(),
//                       child: Text(value),
//                     );
//                   }).toList(),
//                 ),
//               ))
//             ],
//           ),
//           GestureDetector(
//             onTap: () {
//               for (int i = 0; i < _inputCredit.length; i++) {
//                 totalCreditSum += _inputCredit[i];
//                 print("${_inputCredit[i]} & ${_inputGrade[i]}");
//                 switch (_inputGrade[i]) {
//                   case "S":
//                     tempGPA += 10 * _inputCredit[i];
//                     break;

//                   case "A":
//                     tempGPA += 9 * _inputCredit[i];
//                     break;
//                   case "B":
//                     tempGPA += 8 * _inputCredit[i];
//                     break;
//                   case "C":
//                     tempGPA += 7 * _inputCredit[i];
//                     break;
//                   case "D":
//                     tempGPA += 6 * _inputCredit[i];
//                     break;
//                   case "E":
//                     tempGPA += 5 * _inputCredit[i];
//                     break;
//                   case "F":
//                     tempGPA += 4 * _inputCredit[i];
//                     break;
//                   default:
//                 }
//               }
//               print("Gesture Detected");
//               showModalBottomSheet(
//                   context: context,
//                   builder: ((context) {
//                     return Container(
//                       height: 150,
//                       width: double.infinity,
//                       color: Colors.blueAccent,
//                       child: Center(
//                           child: Text(
//                         "GPA : ${tempGPA / totalCreditSum}",
//                         style:
//                             const TextStyle(color: Colors.white, fontSize: 50),
//                       )),
//                     );
//                   }));
//             },
//             child: Container(
//               margin: EdgeInsets.fromLTRB(0, 15, 0, 5),
//               width: double.infinity,
//               height: 50,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15),
//                   color: Colors.blueAccent),
//               child: const Center(
//                 child: Text(
//                   "Calculate",
//                   style: TextStyle(color: Colors.white, fontSize: 26),
//                 ),
//               ),
//             ),
//           )
//         ]),
//       ),
//     );
//   }

//   getRowInput(int inCredit, String inGrade) {
//     return Row(
//       children: [
//         Expanded(
//             child: MyInputField(
//           title: "",
//           hint: "$inCredit credits",
//           widget: DropdownButton(
//             menuMaxHeight: 150,
//             onChanged: (String? newValue) {
//               setState(() {
//                 _inputCredit.add(int.parse(newValue!));
//                 inCredit = int.parse(newValue);
//               });
//             },
//             underline: Container(
//               height: 0,
//             ),
//             icon: const Icon(Icons.keyboard_arrow_down),
//             iconSize: 32,
//             elevation: 4,
//             style: TextStyle(
//                 fontSize: 14,
//                 fontWeight: FontWeight.w400,
//                 color: Colors.grey[700]),
//             items: creditsList.map<DropdownMenuItem<String>>((int value) {
//               return DropdownMenuItem<String>(
//                 value: value.toString(),
//                 child: Text("$value"),
//               );
//             }).toList(),
//           ),
//         )),
//         const SizedBox(
//           width: 12,
//         ),
//         Expanded(
//             child: MyInputField(
//           title: " ",
//           hint: "Grade : $inGrade",
//           widget: DropdownButton(
//             menuMaxHeight: 150,
//             onChanged: (String? newValue) {
//               setState(() {
//                 _inputGrade.add(newValue!);

//                 inGrade = newValue;
//               });
//             },
//             underline: Container(
//               height: 0,
//             ),
//             icon: const Icon(Icons.keyboard_arrow_down),
//             iconSize: 32,
//             elevation: 4,
//             style: TextStyle(
//                 fontSize: 14,
//                 fontWeight: FontWeight.w400,
//                 color: Colors.grey[700]),
//             items: gradeList.map<DropdownMenuItem<String>>((String value) {
//               return DropdownMenuItem<String>(
//                 value: value.toString(),
//                 child: Text(value),
//               );
//             }).toList(),
//           ),
//         ))
//       ],
//     );
//   }
// }
