import 'package:Project/ui_helper/ui.dart';
import 'package:flutter/material.dart';
import '../data/shared_prefs.dart';


class yard extends StatefulWidget {
  const yard({Key? key}) : super(key: key);

  @override
  State<yard> createState() => _yardState();
}

class _yardState extends State<yard> {


  void loadValues(){

  }

  @override
  void initState() {
    super.initState();
    loadValues();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('doc'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: 4,
          itemBuilder: (BuildContext context, int index){
            return ListTile(
              title: const Text("contact"),
              leading: Icon(Icons.person),
              trailing: Icon(Icons.add),
            );
          },
        ),
      ),
    );
  }
}
