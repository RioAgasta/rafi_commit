import 'package:flutter/material.dart';
import 'package:Project/ui_helper/ui.dart';

class hero extends StatefulWidget {
  const hero({Key? key}) : super(key: key);

  @override
  State<hero> createState() => _heroState();
}

class _heroState extends State<hero> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('doc'),
      ),
      body: Center(
        child: Hero(
          tag: 'test',
          child: Container(
            height: 100,
            width: 100,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
