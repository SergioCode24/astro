import 'package:flutter/material.dart';

class MainUser extends StatelessWidget {
  const MainUser({super.key});

  get bottomNavigationBar => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("AAAAAAAAAAAA"),
          automaticallyImplyLeading: false,
        ),
        body: Center(
            child: Column(children: <Widget>[
          Container(
              padding: const EdgeInsets.only(top: 25),
              color: Colors.white,
              child: Column(
                  textDirection: TextDirection.ltr,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  verticalDirection: VerticalDirection.down,
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: Container(color: Colors.teal),
                    ),
                    Expanded(flex: 1, child: Container(color: Colors.red)),
                    Expanded(
                      flex: 2,
                      child: Container(color: Colors.indigoAccent),
                    )
                  ])),
        ])));
  }
}
