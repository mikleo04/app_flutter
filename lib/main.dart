import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  // runApp(MyApp());
  runApp(ScaffoldApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  Scaffold(
        appBar: AppBar(
          title: const Text('Hello, world!'),
        ),
        body: const Center(
          child: BiggerText (
              text_bold : 'Hello, world!'
          ),
        ),
      ),
    );
  }
}

class ScaffoldApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Scaffold',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirtsScreen(),
    );
  }

}

// class

class Heading extends StatelessWidget {
  final String text_bold;

  const Heading({Key? key, required this.text_bold}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text_bold,
      style: const TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class BiggerText extends StatefulWidget {
  final String text_bold;
  const BiggerText({Key? key, required this.text_bold}) : super(key: key);
  @override
  _BiggerTextState createState() => _BiggerTextState();
}

class _BiggerTextState extends State<BiggerText> {
  double _textSize = 16.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(widget.text_bold, style: TextStyle(fontSize: _textSize)),
        ElevatedButton(
          child: const Text("Perbesar"),
          onPressed: () {
          setState(() {
          _textSize = 32.0;
          });
          },
        )
      ],
    );
  }
}

class FirtsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
        actions: <Widget>[
          IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {},
          )
        ],
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
      body: const Center(
        child: Text('Hello World'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}