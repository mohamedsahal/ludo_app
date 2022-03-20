import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    const MaterialApp(
      home: Test(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  int ludoNumber = 1;
  int ludoNumber2 = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        elevation: 16.0,
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: Text('Ludo App'),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      ludoNumber = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('images/dice$ludoNumber.png'),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      ludoNumber2 = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('images/dice$ludoNumber2.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
