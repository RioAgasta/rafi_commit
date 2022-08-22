import 'package:flutter/material.dart';

class aletempik extends StatefulWidget {
  const aletempik({Key? key}) : super(key: key);

  @override
  State<aletempik> createState() => _aletempikState();
}

class _aletempikState extends State<aletempik> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Malen Anjing',
        ),
      ),
      body: Center(
        child: Text(
          'Malen Asu'
        ),
      ),
    );
  }
}
