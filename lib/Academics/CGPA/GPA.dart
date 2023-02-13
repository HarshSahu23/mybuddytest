import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import './input_field.dart';

class GPA extends StatefulWidget {
  const GPA({super.key});

  @override
  State<GPA> createState() => _GPAState();
}

class _GPAState extends State<GPA> {
  List<int> _inputCredit = [];
  List<String> _inputGrade = [];
  List<int> creditsList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<String> gradeList = ["S", "A", "B", "C", "D", "E", "F"];
  int placeHolderCredit = 0;
  String placeHolderGrade = "";
  int index = 0;

  late int inCredit1 = 0;
  late String inGrade1 = "";

  late int inCredit2 = 0;
  late String inGrade2 = "";

  late int inCredit3 = 0;
  late String inGrade3 = "";

  late int inCredit4 = 0;
  late String inGrade4 = "";

  late int inCredit5 = 0;
  late String inGrade5 = "";

  late int inCredit6 = 0;
  late String inGrade6 = "";

  late int inCredit7 = 0;
  late String inGrade7 = "";

  int totalCreditSum = 0;
  int tempGPA = 0;
  int _selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: const Icon(
      //     Icons.calculate,
      //     color: Colors.black,
      //     size: 32,
      //   ),
      //   backgroundColor: Colors.grey.shade300,
      //   title: const Text(
      //     "Calculate GPA",
      //     style: TextStyle(
      //         fontSize: 28, color: Colors.purple, fontWeight: FontWeight.w500),
      //   ),
      // ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(20, 10, 20, 5),
        padding: EdgeInsets.all(5),
        child: ListView(children: [
          Row(
            //Const Header
            children: [
              Container(
                padding: const EdgeInsets.only(top: 10),
                height: 40,
                width: MediaQuery.of(context).size.width * 0.4,
                child: const Center(
                  child: Text(
                    "Credits",
                    style: TextStyle(fontSize: 22, color: Colors.green),
                  ),
                ),
              ),
              Expanded(child: Container()),
              Container(
                padding: const EdgeInsets.only(top: 10),
                height: 40,
                width: MediaQuery.of(context).size.width * 0.4,
                child: const Center(
                  child: Text(
                    "Grade",
                    style: TextStyle(fontSize: 22, color: Colors.green),
                  ),
                ),
              ),
            ],
          ),
          Row(
            //1st Row
            children: [
              Expanded(
                  child: MyInputField(
                title: "",
                hint: "$inCredit1 credits",
                widget: DropdownButton(
                  menuMaxHeight: 150,
                  onChanged: (String? newValue) {
                    setState(() {
                      _inputCredit.add(int.parse(newValue!));
                      inCredit1 = int.parse(newValue);
                    });
                  },
                  underline: Container(
                    height: 0,
                  ),
                  icon: const Icon(Icons.keyboard_arrow_down),
                  iconSize: 32,
                  elevation: 4,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[700]),
                  items: creditsList.map<DropdownMenuItem<String>>((int value) {
                    return DropdownMenuItem<String>(
                      value: value.toString(),
                      child: Text("$value"),
                    );
                  }).toList(),
                ),
              )),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                  child: MyInputField(
                title: " ",
                hint: "Grade : $inGrade1",
                widget: DropdownButton(
                  menuMaxHeight: 150,
                  onChanged: (String? newValue) {
                    setState(() {
                      _inputGrade.add(newValue!);

                      inGrade1 = newValue;
                    });
                  },
                  underline: Container(
                    height: 0,
                  ),
                  icon: const Icon(Icons.keyboard_arrow_down),
                  iconSize: 32,
                  elevation: 4,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[700]),
                  items:
                      gradeList.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value.toString(),
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ))
            ],
          ),
          Row(
            //2nd Row
            children: [
              Expanded(
                  child: MyInputField(
                title: "",
                hint: "$inCredit2 credits",
                widget: DropdownButton(
                  menuMaxHeight: 150,
                  onChanged: (String? newValue) {
                    setState(() {
                      _inputCredit.add(int.parse(newValue!));
                      inCredit2 = int.parse(newValue);
                    });
                  },
                  underline: Container(
                    height: 0,
                  ),
                  icon: const Icon(Icons.keyboard_arrow_down),
                  iconSize: 32,
                  elevation: 4,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[700]),
                  items: creditsList.map<DropdownMenuItem<String>>((int value) {
                    return DropdownMenuItem<String>(
                      value: value.toString(),
                      child: Text("$value"),
                    );
                  }).toList(),
                ),
              )),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                  child: MyInputField(
                title: " ",
                hint: "Grade : $inGrade2",
                widget: DropdownButton(
                  menuMaxHeight: 150,
                  onChanged: (String? newValue) {
                    setState(() {
                      _inputGrade.add(newValue!);

                      inGrade2 = newValue;
                    });
                  },
                  underline: Container(
                    height: 0,
                  ),
                  icon: const Icon(Icons.keyboard_arrow_down),
                  iconSize: 32,
                  elevation: 4,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[700]),
                  items:
                      gradeList.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value.toString(),
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ))
            ],
          ),
          Row(
            //3rd Row
            children: [
              Expanded(
                  child: MyInputField(
                title: "",
                hint: "$inCredit3 credits",
                widget: DropdownButton(
                  menuMaxHeight: 150,
                  onChanged: (String? newValue) {
                    setState(() {
                      _inputCredit.add(int.parse(newValue!));
                      inCredit3 = int.parse(newValue);
                    });
                  },
                  underline: Container(
                    height: 0,
                  ),
                  icon: const Icon(Icons.keyboard_arrow_down),
                  iconSize: 32,
                  elevation: 4,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[700]),
                  items: creditsList.map<DropdownMenuItem<String>>((int value) {
                    return DropdownMenuItem<String>(
                      value: value.toString(),
                      child: Text("$value"),
                    );
                  }).toList(),
                ),
              )),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                  child: MyInputField(
                title: " ",
                hint: "Grade : $inGrade3",
                widget: DropdownButton(
                  menuMaxHeight: 150,
                  onChanged: (String? newValue) {
                    setState(() {
                      _inputGrade.add(newValue!);

                      inGrade3 = newValue;
                    });
                  },
                  underline: Container(
                    height: 0,
                  ),
                  icon: const Icon(Icons.keyboard_arrow_down),
                  iconSize: 32,
                  elevation: 4,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[700]),
                  items:
                      gradeList.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value.toString(),
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ))
            ],
          ),
          Row(
            //4th Row
            children: [
              Expanded(
                  child: MyInputField(
                title: "",
                hint: "$inCredit4 credits",
                widget: DropdownButton(
                  menuMaxHeight: 150,
                  onChanged: (String? newValue) {
                    setState(() {
                      _inputCredit.add(int.parse(newValue!));
                      inCredit4 = int.parse(newValue);
                    });
                  },
                  underline: Container(
                    height: 0,
                  ),
                  icon: const Icon(Icons.keyboard_arrow_down),
                  iconSize: 32,
                  elevation: 4,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[700]),
                  items: creditsList.map<DropdownMenuItem<String>>((int value) {
                    return DropdownMenuItem<String>(
                      value: value.toString(),
                      child: Text("$value"),
                    );
                  }).toList(),
                ),
              )),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                  child: MyInputField(
                title: " ",
                hint: "Grade : $inGrade4",
                widget: DropdownButton(
                  menuMaxHeight: 150,
                  onChanged: (String? newValue) {
                    setState(() {
                      _inputGrade.add(newValue!);

                      inGrade4 = newValue;
                    });
                  },
                  underline: Container(
                    height: 0,
                  ),
                  icon: const Icon(Icons.keyboard_arrow_down),
                  iconSize: 32,
                  elevation: 4,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[700]),
                  items:
                      gradeList.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value.toString(),
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ))
            ],
          ),
          Row(
            //5th Row
            children: [
              Expanded(
                  child: MyInputField(
                title: "",
                hint: "$inCredit5 credits",
                widget: DropdownButton(
                  menuMaxHeight: 150,
                  onChanged: (String? newValue) {
                    setState(() {
                      _inputCredit.add(int.parse(newValue!));
                      inCredit5 = int.parse(newValue);
                    });
                  },
                  underline: Container(
                    height: 0,
                  ),
                  icon: const Icon(Icons.keyboard_arrow_down),
                  iconSize: 32,
                  elevation: 4,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[700]),
                  items: creditsList.map<DropdownMenuItem<String>>((int value) {
                    return DropdownMenuItem<String>(
                      value: value.toString(),
                      child: Text("$value"),
                    );
                  }).toList(),
                ),
              )),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                  child: MyInputField(
                title: " ",
                hint: "Grade : $inGrade5",
                widget: DropdownButton(
                  menuMaxHeight: 150,
                  onChanged: (String? newValue) {
                    setState(() {
                      _inputGrade.add(newValue!);

                      inGrade5 = newValue;
                    });
                  },
                  underline: Container(
                    height: 0,
                  ),
                  icon: const Icon(Icons.keyboard_arrow_down),
                  iconSize: 32,
                  elevation: 4,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[700]),
                  items:
                      gradeList.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value.toString(),
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ))
            ],
          ),
          Row(
            //6th Row
            children: [
              Expanded(
                  child: MyInputField(
                title: "",
                hint: "$inCredit6 credits",
                widget: DropdownButton(
                  menuMaxHeight: 150,
                  onChanged: (String? newValue) {
                    setState(() {
                      _inputCredit.add(int.parse(newValue!));
                      inCredit6 = int.parse(newValue);
                    });
                  },
                  underline: Container(
                    height: 0,
                  ),
                  icon: const Icon(Icons.keyboard_arrow_down),
                  iconSize: 32,
                  elevation: 4,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[700]),
                  items: creditsList.map<DropdownMenuItem<String>>((int value) {
                    return DropdownMenuItem<String>(
                      value: value.toString(),
                      child: Text("$value"),
                    );
                  }).toList(),
                ),
              )),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                  child: MyInputField(
                title: " ",
                hint: "Grade : $inGrade6",
                widget: DropdownButton(
                  menuMaxHeight: 150,
                  onChanged: (String? newValue) {
                    setState(() {
                      _inputGrade.add(newValue!);

                      inGrade6 = newValue;
                    });
                  },
                  underline: Container(
                    height: 0,
                  ),
                  icon: const Icon(Icons.keyboard_arrow_down),
                  iconSize: 32,
                  elevation: 4,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[700]),
                  items:
                      gradeList.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value.toString(),
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ))
            ],
          ),
          Row(
            //7th Row
            children: [
              Expanded(
                  child: MyInputField(
                title: "",
                hint: "$inCredit7 credits",
                widget: DropdownButton(
                  menuMaxHeight: 150,
                  onChanged: (String? newValue) {
                    setState(() {
                      _inputCredit.add(int.parse(newValue!));
                      inCredit7 = int.parse(newValue);
                    });
                  },
                  underline: Container(
                    height: 0,
                  ),
                  icon: const Icon(Icons.keyboard_arrow_down),
                  iconSize: 32,
                  elevation: 4,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[700]),
                  items: creditsList.map<DropdownMenuItem<String>>((int value) {
                    return DropdownMenuItem<String>(
                      value: value.toString(),
                      child: Text("$value"),
                    );
                  }).toList(),
                ),
              )),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                  child: MyInputField(
                title: " ",
                hint: "Grade : $inGrade7",
                widget: DropdownButton(
                  menuMaxHeight: 150,
                  onChanged: (String? newValue) {
                    setState(() {
                      _inputGrade.add(newValue!);

                      inGrade7 = newValue;
                    });
                  },
                  underline: Container(
                    height: 0,
                  ),
                  icon: const Icon(Icons.keyboard_arrow_down),
                  iconSize: 32,
                  elevation: 4,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[700]),
                  items:
                      gradeList.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value.toString(),
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ))
            ],
          ),
          GestureDetector(
            onTap: () {
              for (int i = 0; i < _inputCredit.length; i++) {
                totalCreditSum += _inputCredit[i];
                print("${_inputCredit[i]} & ${_inputGrade[i]}");
                switch (_inputGrade[i]) {
                  case "S":
                    tempGPA += 10 * _inputCredit[i];
                    break;

                  case "A":
                    tempGPA += 9 * _inputCredit[i];
                    break;
                  case "B":
                    tempGPA += 8 * _inputCredit[i];
                    break;
                  case "C":
                    tempGPA += 7 * _inputCredit[i];
                    break;
                  case "D":
                    tempGPA += 6 * _inputCredit[i];
                    break;
                  case "E":
                    tempGPA += 5 * _inputCredit[i];
                    break;
                  case "F":
                    tempGPA += 4 * _inputCredit[i];
                    break;
                  default:
                }
              }
              print("Gesture Detected");
              showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.transparent,
                  builder: ((context) {
                    return Container(
                      height: 150,
                      width: double.infinity,
                      // color: Colors.blueAccent,
                      child: Center(
                          child: Text(
                        "GPA : ${(tempGPA / totalCreditSum).toStringAsFixed(2)}",
                        style: TextStyle(
                            color: Colors.grey.shade300, fontSize: 50),
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
        ]),
      ),
    );
  }

  getRowInput(int inCredit, String inGrade) {
    return Row(
      children: [
        Expanded(
            child: MyInputField(
          title: "",
          hint: "$inCredit credits",
          widget: DropdownButton(
            menuMaxHeight: 150,
            onChanged: (String? newValue) {
              setState(() {
                _inputCredit.add(int.parse(newValue!));
                inCredit = int.parse(newValue);
              });
            },
            underline: Container(
              height: 0,
            ),
            icon: const Icon(Icons.keyboard_arrow_down),
            iconSize: 32,
            elevation: 4,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.grey[700]),
            items: creditsList.map<DropdownMenuItem<String>>((int value) {
              return DropdownMenuItem<String>(
                value: value.toString(),
                child: Text("$value"),
              );
            }).toList(),
          ),
        )),
        const SizedBox(
          width: 12,
        ),
        Expanded(
            child: MyInputField(
          title: " ",
          hint: "Grade : $inGrade",
          widget: DropdownButton(
            menuMaxHeight: 150,
            onChanged: (String? newValue) {
              setState(() {
                _inputGrade.add(newValue!);

                inGrade = newValue;
              });
            },
            underline: Container(
              height: 0,
            ),
            icon: const Icon(Icons.keyboard_arrow_down),
            iconSize: 32,
            elevation: 4,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.grey[700]),
            items: gradeList.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value.toString(),
                child: Text(value),
              );
            }).toList(),
          ),
        ))
      ],
    );
  }
}
