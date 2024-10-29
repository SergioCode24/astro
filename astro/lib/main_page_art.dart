import 'package:flutter/material.dart';

class MainPageArticle extends StatelessWidget {
  const MainPageArticle({super.key});

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
          ),
        ])));
  }
}
