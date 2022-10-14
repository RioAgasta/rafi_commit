import 'package:Project/home.dart';
import 'package:Project/widget/tugas.dart';
import 'package:Project/widget/yard.dart';
import 'package:flutter/material.dart';
import 'package:Project/ui_helper/ui.dart';
import 'package:Project/widget/box.dart';
import 'package:Project/widget/doc.dart';
import 'package:Project/sign/success.dart';
import 'package:Project/widget/Basement.dart';

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

  void _navigationToBasement(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Basement()));
  }

  static const List<Widget> pageList = [
    task(),
    mainbox(),
    dokumen(),
    Basement(),
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
        type: BottomNavigationBarType.fixed,
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
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance),
            label: "Basement",
          ),
        ],
        currentIndex: seletorIndex,
        onTap: _onTap,
      ),
      body: pageList.elementAt(seletorIndex),
    );
  }
}
