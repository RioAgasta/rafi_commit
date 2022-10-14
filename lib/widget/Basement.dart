import 'package:flutter/material.dart';
import 'package:Project/ui_helper/ui.dart';
import 'package:Project/data/shared_prefs.dart';

class Basement extends StatefulWidget {
  const Basement({Key? key}) : super(key: key);

  @override
  State<Basement> createState() => _BasementState();
}

class _BasementState extends State<Basement> {

  TextEditingController srController = TextEditingController();
  String? strValue = "";


  void loadValues() async {
    strValue = await SharedPrefs.getString('stringValue');
    setState(() {});
  }

  void initState() {
    super.initState();
    loadValues();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Basement"),
        ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Material(
            elevation: 20,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "String Value : $strValue",
                  ),
                  verticalSpaceMedium,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: srController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            labelText: 'Enter Value',
                          ),
                        ),
                      ),
                      horizontalSpaceMedium,
                      ElevatedButton(onPressed: (){
                        setState(() {
                          strValue = srController.text;
                          SharedPrefs.setString('stringValue', strValue!);
                          loadValues();
                        });
                      },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                          ),
                          child: Text("save")
                      ),
                      horizontalSpaceTiny,
                      ElevatedButton(onPressed: (){
                        SharedPrefs.remove('stringValue');
                        loadValues();
                      },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.red),
                          ),
                          child: Text("delete")
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
