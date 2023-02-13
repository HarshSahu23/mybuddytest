import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Pointer extends StatefulWidget {
  const Pointer({super.key});

  @override
  State<Pointer> createState() => _PointerState();
}

class _PointerState extends State<Pointer> {
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
          Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(5),
            child: Center(
              child: Text("I want to become"),
            ),
          ),
          _myInputForCGPA(TEC_nowGPA, "Select Pointer ", context),
          _myInputForCGPA(
              TEC_nowSemCredit, "Credits finished this semester", context),
          _myInputForCGPA(TEC_oldCGPA, "Previous Semester CGPA", context),
          _myInputForCGPA(TEC_oldTotalCredits,
              "Credits finished before this Semester", context),
          GestureDetector(
            onTap: () {
              print("Gesture Detected");
              double pointer = double.parse(TEC_nowGPA.text.toString());
              double nowCreds = double.parse(TEC_nowSemCredit.text.toString());
              double oldCGPA = double.parse(TEC_oldCGPA.text.toString());
              double oldCreds =
                  double.parse(TEC_oldTotalCredits.text.toString());
              double value =
                  (((pointer * (nowCreds + oldCreds)) - (oldCGPA * oldCreds)) /
                      nowCreds);
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
                        "Get : ${value.toStringAsFixed(2)} GPA",
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
}
