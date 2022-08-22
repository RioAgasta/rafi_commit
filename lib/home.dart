import 'package:flutter/material.dart';
import 'package:Malenochinchin/aletempik.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void alesukakontol(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const aletempik()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
              children: <Widget> [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      'SMKN 2 Bandung',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Image.asset('assets/images/smk2.png', height: 150, width: 150,),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.5,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'username',
                        hintText: 'input your username'
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.5,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'password',
                        hintText: 'input your password',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width*0.5,
                  child: ElevatedButton(onPressed: (){
                    alesukakontol(context);
                  },
                    child: Text(
                    "Login".toUpperCase(),
                      style: TextStyle(fontSize: 25),
                  ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.cyan
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
