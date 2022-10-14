import 'package:flutter/material.dart';

class heri extends StatefulWidget {
  const heri({Key? key}) : super(key: key);

  @override
  State<heri> createState() => _heriState();
}

class _heriState extends State<heri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('doc'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Hero(
          tag: 'hero',
          child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 300,
              height: 300,
              color: Colors.grey,
            ),
            Positioned(
              top: 225,
              left: 0,
              right: 0,

              child: Center(
                child: Container(
                  width: 270,
                  height: 150,
                  color: Colors.blueAccent,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
     }
    }
