import 'package:Malenochinchin/ui.dart';
import 'package:flutter/material.dart';


class mainbox extends StatefulWidget {
  const mainbox({Key? key}) : super(key: key);

  @override
  State<mainbox> createState() => _mainboxState();
}

class _mainboxState extends State<mainbox> {
  int _listcount = 1;


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
                });
              },
                child: Text(
                    "Add list"
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
