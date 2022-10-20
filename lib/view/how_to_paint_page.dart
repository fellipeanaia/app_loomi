import 'package:flutter/material.dart';

class HowToPaint extends StatelessWidget {
  const HowToPaint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: IconButton(
                    iconSize: 35,
                    icon: const Icon(Icons.arrow_back_ios),
                    onPressed: () =>
                        Navigator.of(context).pushNamed('/store_page'),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Como pintar',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 45, top: 30),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text('1',
                          style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF5B4DA7))),
                      const Text(
                        '  Prepare a tinta',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Image.asset('images/bucket.jpg'),
                      ),
                    ],
                  ),
                  Wrap(
                    children: const [
                      Text(
                        'Abra a tinta e a coloque na caçamba',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Row(
                    children: [
                      const Text('2',
                          style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF5B4DA7))),
                      const Text(
                        '  Primeira demão',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Image.asset('images/brush.jpg'),
                      ),
                    ],
                  ),
                  Wrap(
                    children: const [
                      Text(
                        'Aplique a tinta na parede em N como mostrado no vídeo para melhor aproveitamento',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
