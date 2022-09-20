import 'package:Malenochinchin/home.dart';
import 'package:Malenochinchin/tugas.dart';
import 'package:Malenochinchin/yard.dart';
import 'package:flutter/material.dart';
import 'package:Malenochinchin/ui.dart';
import 'package:Malenochinchin/box.dart';
import 'package:Malenochinchin/doc.dart';
import 'package:Malenochinchin/succ.dart';

class aletempik extends StatefulWidget {
  const aletempik({Key? key}) : super(key: key);

  @override
  State<aletempik> createState() => _aletempikState();
}

class _aletempikState extends State<aletempik> {

  void _navigationToHome(BuildContext context){
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const task()));
  }

  void _navigationToYard(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const mainbox()));
  }

  void _navigationToDokumenSupersemar(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const dokumen()));
  }

  static const List<Widget> pageList = [
    task(),
    mainbox(),
    dokumen(),
  ];

  int seletorIndex = 0;

  void _onTap(int index){
    setState(() {
      seletorIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_sharp),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_tree_outlined),
            label: "Yard",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.accessible),
            label: "Dokumen supersemar",
          ),
        ],
        currentIndex: seletorIndex,
        onTap: _onTap,
      ),
      body: pageList.elementAt(seletorIndex),
    );
  }
}
