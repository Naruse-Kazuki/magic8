import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue,
        ),
        body: MagicPage(),
      ),
    ),
  );
}

class MagicPage extends StatefulWidget {
  @override
  _MagicPageState createState() => _MagicPageState();
}

class _MagicPageState extends State<MagicPage> {
  int magic8 = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: FlatButton(
          onPressed: () {
            setState(() {
              magic8 = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$magic8.png'),
        ),
      ),
    );
  }
}
