import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen2")),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/WIP.png"),
              fit: BoxFit.fitWidth,
            )),
          ),
        ),
      ),
    );
  }
}
