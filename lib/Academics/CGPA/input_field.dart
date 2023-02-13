import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyInputField extends StatelessWidget {
  final String title;
  final String hint;
  final TextEditingController? controller;
  final Widget? widget;
  const MyInputField(
      {super.key,
      required this.title,
      required this.hint,
      this.controller,
      this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 13),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        // Text(
        //   title,
        //   style: const TextStyle(
        //       fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),
        // ),
        Container(
          height: 46,
          padding: const EdgeInsets.only(left: 14),
          margin: const EdgeInsets.only(top: 6.0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1),
              borderRadius: BorderRadius.circular(12)),
          child: Row(
            children: [
              Expanded(
                  child: TextFormField(
                autofocus: false,
                readOnly: widget == null ? false : true,
                cursorColor: Colors.grey[700],
                controller: controller,
                style: TextStyle(
                    fontSize: 14,
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
              )),
              widget == null
                  ? Container()
                  : Container(
                      child: widget,
                    )
            ],
          ),
        )
      ]),
    );
  }
}
