import 'package:flutter/material.dart';

import 'package:mathgame/const.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<String> ButtonPaad = [
      '7',
      '8',
      '9',
      'C',
      '4',
      '5',
      '6',
      'DEl',
      '1',
      '2',
      '3',
      '0',
    ];
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      body: Column(children: [
        Container(
          height: 160,
          color: Colors.deepPurple,
        ),
        Expanded(
          child: Container(
            height: 160,
            child: Center(
                child: Text(
              "1+1",
              style: WhiteTextStyle,
            )),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            height: 160,
            child: GridView.builder(
              itemCount: ButtonPaad.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Center( 
                    child: Container(
                        color: Colors.deepPurple,
                        child: Text(
                          ButtonPaad[index],
                          style: WhiteTextStyle,
                        )),
                  ),
                );
              },
            ),
          ),
        ),
      ]),
    );
  }
}
