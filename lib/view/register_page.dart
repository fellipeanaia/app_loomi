import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5B4DA7),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 75,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/logo.png'),
                  const Text(
                    'XTintas',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFEAEAEA)),
                  ),
                ],
              ),
              const SizedBox(
                height: 45,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Criar conta',
                    style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFEAEAEA)),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '   Nome',
                      style: TextStyle(
                        fontSize: 17,
                        color: Color(0xFFEAEAEA),
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      style: const TextStyle(color: Colors.white38),
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(90, 255, 255, 255),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)))),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      '   E-mail',
                      style: TextStyle(
                        fontSize: 17,
                        color: Color(0xFFEAEAEA),
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      style: const TextStyle(color: Colors.white38),
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(90, 255, 255, 255),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      '   Senha',
                      style: TextStyle(
                        fontSize: 17,
                        color: Color(0xFFEAEAEA),
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      style: const TextStyle(color: Colors.white38),
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(90, 255, 255, 255),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        suffixIcon: Align(
                          widthFactor: 1.0,
                          heightFactor: 1.0,
                          child: Icon(
                            Icons.remove_red_eye_outlined,
                            color: Colors.white38,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      '   Confirmar senha',
                      style: TextStyle(
                        fontSize: 17,
                        color: Color(0xFFEAEAEA),
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      style: const TextStyle(color: Colors.white38),
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(90, 255, 255, 255),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        suffixIcon: Align(
                          widthFactor: 1.0,
                          heightFactor: 1.0,
                          child: Icon(
                            Icons.remove_red_eye_outlined,
                            color: Colors.white38,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 1,
                        height: MediaQuery.of(context).size.height * 0.18,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(15, 255, 255, 255),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.elliptical(400, 190),
                            topRight: Radius.elliptical(190, 65),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xFFEAEAEA)),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ),
                              onPressed: () => Navigator.of(context)
                                  .pushNamed('/store_page'),
                              child: const Padding(
                                padding: EdgeInsets.fromLTRB(60, 15, 60, 15),
                                child: Text(
                                  'Criar conta',
                                  style: TextStyle(
                                      fontSize: 20, color: Color(0xFF5B4DA7)),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
