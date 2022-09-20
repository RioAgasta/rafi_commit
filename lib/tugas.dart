import 'package:Malenochinchin/ui.dart';
import 'package:flutter/material.dart';


class task extends StatefulWidget {
  const task({Key? key}) : super(key: key);

  @override
  State<task> createState() => _taskState();
}

class _taskState extends State<task> {
  bool isOn = false;
  bool isOn1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tugas"
        ),
      ),
      body: Container(
        color: Colors.blueAccent,
        child: Center(
          child: Column(
            children: <Widget> [
              verticalSpaceSmall,
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white
                ),
                height: 130,
                width: 370,
                child: Column(
                  children: <Widget> [
                    verticalSpaceTiny,
                    Text(
                        "Power",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 25, right: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget> [
                          Column(
                            children: <Widget> [
                              Text(
                                "Voltage"
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget> [
                              Text(
                                  "V",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget> [
                          Column(
                            children: <Widget> [
                              Text(
                                  "Current"
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget> [
                              Text(
                                "A",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget> [
                          Column(
                            children: <Widget> [
                              Text(
                                  "Power"
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget> [
                              Text(
                                "W",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget> [
                          Column(
                            children: <Widget> [
                              Text(
                                  "Energy"
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget> [
                              Text(
                                "kWh",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget> [
                          Column(
                            children: <Widget> [
                              Text(
                                  "Frequency"
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget> [
                              Text(
                                "Hz",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    verticalSpaceTiny,
                  ],
                ),
              ),
              verticalSpaceTiny,
              Container(
                width: 370,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget> [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget> [
                          verticalSpaceSmall,
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            height: 100,
                            width: 175,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.white
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget> [
                                verticalSpaceTiny,
                                Text(
                                  "Saklar",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                ListTile(
                                  title : Switch(
                                    value: isOn1,
                                    onChanged: (value) {
                                      setState(() {
                                        isOn1 = value;
                                      });
                                    },
                                    activeTrackColor: Colors.lightBlueAccent,
                                    activeColor: Colors.blue,
                                  ),
                                  trailing: Icon(Icons.lightbulb, color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget> [
                          verticalSpaceSmall,
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            height: 100,
                            width: 175,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.white
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget> [
                                verticalSpaceTiny,
                                Text(
                                  "Steker",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                ListTile(
                                  title : Switch(
                                    value: isOn,
                                    onChanged: (value) {
                                      setState(() {
                                        isOn = value;
                                       });
                                        },
                                        activeTrackColor: Colors.lightBlueAccent,
                                        activeColor: Colors.blue,
                                    ),
                                  trailing: Icon(Icons.bolt, color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
              ),
              verticalSpaceTiny,
              SizedBox(
                width: 370,
                height: 25,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                    ),

                    onPressed: (){
                    setState(() {
                     isOn1 = false;
                     isOn = false;
                    });
                  },

                      child: Text(
                        "RESET",
                        style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        ),
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
