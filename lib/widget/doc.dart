import 'package:Project/Hero/hero.dart';
import 'package:Project/ui_helper//ui.dart';
import 'package:flutter/material.dart';
import 'package:Project/Hero/hero2.dart';


class dokumen extends StatefulWidget {
  const dokumen({Key? key}) : super(key: key);

  @override
  State<dokumen> createState() => _dokumenState();
}

class _dokumenState extends State<dokumen> {
  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("doc"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget> [
              verticalSpaceMedium,
              Container(
                height: 200,
                width: screenWidth - 40,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.green,
                        Colors.red,
                      ],
                    stops: [
                      0.1,
                      1,
                    ]
                  ),
                ),
              ),
              verticalSpaceMedium,
              Column(
                children: <Widget> [
                  Container(
                    height: 30,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                    ),
                    transform: Matrix4.skewX(1.3),
                  ),
                  Container(
                    height: 30,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                    ),
                    transform: Matrix4.skewX(1.0),
                  ),
                  Container(
                    height: 30,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                    ),
                    transform: Matrix4.skewY(1.3),
                  ),
                  Container(
                    height: 30,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                    ),
                    transform: Matrix4.skewY(1.0),
                  ),Container(
                    height: 30,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                    ),
                    transform: Matrix4.skewY(0.4),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
