import 'package:Project/ui_helper/ui.dart';
import 'package:flutter/material.dart';
import '../data/shared_prefs.dart';


class mainbox extends StatefulWidget {
  const mainbox({Key? key}) : super(key: key);

  @override
  State<mainbox> createState() => _mainboxState();
}

class _mainboxState extends State<mainbox> {
  int _listcount = 1;

  void loadValues() async{
    _listcount = (await SharedPrefs.getInt('intValue'))!;
    setState(() {});
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              ElevatedButton(onPressed: (){
                setState(() {
                  _listcount++;
                  SharedPrefs.setInt('intValue', _listcount);
                  loadValues();
                });
              },
                child: Text(
                    "add list"
                ),
              ),
              ElevatedButton(onPressed: (){
                setState(() {
                  if (_listcount > 1){
                    _listcount--;
                    SharedPrefs.setInt('intValue', _listcount);
                    loadValues();
                  }
                });
              },
                child: Text(
                    "decrese list"
                ),
              ),
              ElevatedButton(onPressed: (){
                setState(() {
                  _listcount = 1;
                  SharedPrefs.setInt('intValue', _listcount);
                  loadValues();
                });
              },
                child: Text(
                    "reset list"
                ),
              ),
              ListView.builder(
                physics: ScrollPhysics(parent: null),
                shrinkWrap: true,
                itemCount: _listcount,
                itemBuilder: (BuildContext context, int index){
                  return Container(
                    color: index.isEven ? Colors.red : Colors.yellow,
                    child: ListTile(
                      title: Text("contact $index"),
                      leading: Icon(Icons.person),
                      trailing: Icon(Icons.add),
                    ),
                  );
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
