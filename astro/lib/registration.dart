import 'package:astro/user.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Reg extends StatelessWidget {
  Reg({super.key});

  User id1 = User('', '', '', '');

  late String newName;
  late String newDateB;
  late String loginUs;
  late String passUS;
  final textController1 = TextEditingController();
  final textController2 = TextEditingController();
  final textController3 = TextEditingController();
  final textController4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 172, 190, 223),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 92, 81, 122),
          automaticallyImplyLeading: false,
          title: const Text(
            'Registration',
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ),
        body: SingleChildScrollView(
            child: Center(
                child: ConstrainedBox(
          constraints: const BoxConstraints.tightFor(width: 1000, height: 750),
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ConstrainedBox(
                    constraints:
                        const BoxConstraints.tightFor(width: 350, height: 500),
                    child: Container(
                      padding: const EdgeInsets.all(30),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 129, 115, 168),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Icon(Icons.account_circle,
                              size: 100,
                              color: Color.fromARGB(255, 172, 190, 223)),
                          Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 30),
                            margin: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 0),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 160, 144, 207),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            width: 400.0,
                            height: 50.0,
                            child: TextFormField(
                              controller: textController1,
                              decoration:
                                  const InputDecoration(labelText: "User name"),
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
                              color: const Color.fromARGB(255, 160, 144, 207),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            width: 400.0,
                            height: 50.0,
                            child: TextFormField(
                              controller: textController2,
                              decoration:
                                  const InputDecoration(labelText: "Birthday"),
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
                              color: const Color.fromARGB(255, 160, 144, 207),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            width: 400.0,
                            height: 50.0,
                            child: TextFormField(
                              controller: textController3,
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
                              color: const Color.fromARGB(255, 160, 144, 207),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            width: 400.0,
                            height: 50.0,
                            child: TextFormField(
                              controller: textController4,
                              decoration:
                                  const InputDecoration(labelText: "Password"),
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 92, 81, 122)),
                              onPressed: () {
                                newName = textController1.text.trim();
                                newDateB = textController2.text.trim();
                                loginUs = textController3.text.trim();
                                passUS = textController4.text.trim();
                                id1 = User(newName, newDateB, loginUs, passUS);
                                listUser.add(id1);

                                Navigator.of(context).pushNamed('/BottomNavig');
                              },
                              child: const Text(
                                ">",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              )),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/log');
                    },
                    child: const Row(
                        textDirection: TextDirection.ltr,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Уже есть аккаунт?',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                          Text('Войти',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 107, 17, 17)))
                        ]),
                  ),
                ]),
          ),
        ))));
  }
}
