import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Login extends StatelessWidget {
  Login({super.key});

  late String logUs;
  late String passwordUs;

  final textController5 = TextEditingController();
  final textController6 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 216, 226, 245),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color.fromARGB(255, 92, 81, 122),
          title: const Text(
            'Login',
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ),
        body: SingleChildScrollView(
          child: ConstrainedBox(
              constraints:
                  const BoxConstraints.tightFor(width: 10000, height: 750),
              child: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                    ConstrainedBox(
                        constraints: const BoxConstraints.tightFor(
                            width: 350, height: 500),
                        child: Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 179, 172, 223),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Icon(Icons.account_circle,
                                  size: 100,
                                  color: Color.fromARGB(255, 216, 226, 245)),
                              Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 30),
                                margin: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 0),
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 160, 144, 207),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                width: 400.0,
                                height: 50.0,
                                child: TextFormField(
                                  controller: textController5,
                                  decoration:
                                      const InputDecoration(labelText: "Login"),
                                  keyboardType: TextInputType.emailAddress,
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 30),
                                margin: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 0),
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 160, 144, 207),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                width: 400.0,
                                height: 50.0,
                                child: TextFormField(
                                  controller: textController6,
                                  decoration: const InputDecoration(
                                      labelText: "Password"),
                                  keyboardType: TextInputType.emailAddress,
                                ),
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color.fromARGB(
                                          255, 92, 81, 122)),
                                  onPressed: () {
                                    logUs = textController5.text.trim();
                                    passwordUs = textController6.text.trim();

                                    Navigator.of(context)
                                        .pushNamed('/BottomNavig');
                                  },
                                  child: const Text(
                                    ">",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255)),
                                  )),
                            ],
                          ),
                        )),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/reg');
                      },
                      child: const Row(
                          textDirection: TextDirection.ltr,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Еще нет аккаунта??',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                            Text('Регистрация',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 107, 17, 17)))
                          ]),
                    ),
                  ]))),
        ));
  }
}
