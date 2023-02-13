import 'package:flutter/material.dart';
import 'screen2.dart';
import 'FinanceModule/mainFinance.dart';

class dashboard extends StatelessWidget {
  const dashboard({Key? key}) : super(key: key);

  Widget buildTab(
    String tabName,
    BuildContext context,
    String route,
    Color? clr,
  ) {
    final deviceSize = MediaQuery.of(context).size;
    final tabWidth = ((deviceSize.width * 0.85) / 2);
    final tabHeight = 110.0;
    return Container(
      width: tabWidth,
      height: tabHeight,
      padding: EdgeInsets.fromLTRB(2, 10, 2, 10),
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            //Bottom right shadow is darker
            BoxShadow(
              color: Colors.grey.shade600,
              offset: Offset(5, 5),
              blurRadius: 15,
              spreadRadius: 1,
            ),
            // Top left lighter shadow
            const BoxShadow(
              color: Colors.white,
              offset: Offset(-5, -5),
              blurRadius: 15,
              spreadRadius: 1,
            )
          ]),
      child: TextButton(
        child: Text(
          tabName,
          style: TextStyle(fontSize: 32, fontFamily: 'Itim', color: clr),
        ),
        onPressed: () {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Navigator.pushNamed(context, route);
          });
          // mainFinance();
        },
      ),
    );
  }

  Widget buildTab2(
    String tabName,
    BuildContext context,
    String route,
    Color? clr,
  ) {
    final deviceSize = MediaQuery.of(context).size;
    final tabWidth = ((deviceSize.width * 0.85) / 2);
    final tabHeight = 110.0;
    return Container(
      width: deviceSize.width * 0.85,
      height: tabHeight,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            //Bottom right shadow is darker
            BoxShadow(
              color: Colors.grey.shade600,
              offset: Offset(5, 5),
              blurRadius: 15,
              spreadRadius: 1,
            ),
            // Top left lighter shadow
            const BoxShadow(
              color: Colors.white,
              offset: Offset(-5, -5),
              blurRadius: 15,
              spreadRadius: 1,
            )
          ]),
      child: TextButton(
        child: Text(
          tabName,
          style: TextStyle(fontSize: 32, fontFamily: 'Itim', color: clr),
        ),
        onPressed: () {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Navigator.pushNamed(context, route);
          });
          // mainFinance();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final tabWidth = ((deviceSize.width * 0.85) / 2);
    final tabHeight = 110.0;

    // Container tabs = Container();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: (AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
          title: Text('D O C K E T'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            )
          ],
        )),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      child: Image.asset(
                    'assets/dashboard_pic1.png',
                    fit: BoxFit.fitHeight,
                    height: 250,
                    width: 250,
                  )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildTab(
                      "Academic", context, '/AcademicHome', Colors.pink[300]),
                  buildTab("Finance", context, '/FinanceHome', Colors.green),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildTab2("Hobbies & Careers", context, '/HobbiesHome',
                      Colors.cyan),
                  // buildTab(
                  //     "Career", context, '/CareerHome', Colors.orange[500]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
