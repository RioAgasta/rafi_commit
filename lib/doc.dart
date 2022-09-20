import 'package:Malenochinchin/hero.dart';
import 'package:flutter/material.dart';
import 'package:Malenochinchin/hero2.dart';


class dokumen extends StatefulWidget {
  const dokumen({Key? key}) : super(key: key);

  @override
  State<dokumen> createState() => _dokumenState();
}

class _dokumenState extends State<dokumen> {
  @override
  Widget build(BuildContext context) {
    void _navigationToHero(BuildContext context){
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const hero()));
    }

    void _navigationToHeri(BuildContext context){
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const heri()));
    }
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

                });
              },
                child: Text(
                    "Add list"
                ),
              ),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200, mainAxisExtent:10, crossAxisSpacing: 10,
                ),
                physics: ScrollPhysics(parent: null),
                shrinkWrap: true,
                itemCount: 8,
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
