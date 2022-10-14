import 'package:flutter/material.dart';
import 'package:Project/index.dart';
import 'package:Project/ui_helper/ui.dart';
import 'package:Project/sign/sign.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void alesukakontol(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const aletempik()));
  }

  void akun(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const sign()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
       child: Center(
         child: Column(
           children: <Widget>[
             Container(
               child: Padding(
                 padding: const EdgeInsets.only(top: 20),
                 child: Text(
                   'SMKN 2 Bandung',
                   style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 30),
               child: Container(
                 child: Image.asset('assets/images/smk2.png', height: 200, width: 200),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 30),
               child: Container(
                 width: MediaQuery.of(context).size.width*0.5,
                 child: TextField(
                   decoration: InputDecoration(
                     border: OutlineInputBorder(),
                     labelText: 'Username',
                     hintText: 'Enter your username',
                   ),
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 10),
               child: Container(
                 width: MediaQuery.of(context).size.width * 0.5,
                 child: TextField(
                   decoration: InputDecoration(
                     border: OutlineInputBorder(),
                     labelText: 'Password',
                     hintText: 'Enter your password',
                   ),
                 ),
               ),
             ),
             verticalSpaceMedium,
             ElevatedButton(onPressed: (){
               alesukakontol(context);
             },
                 child: Text(
                   "Login"
                 ),
               style: ButtonStyle(
                 elevation: MaterialStateProperty.all(0),
                 backgroundColor: MaterialStateProperty.all(
                     Theme.of(context).colorScheme.secondary),
                 padding: MaterialStateProperty.all(
                     const EdgeInsets.symmetric(
                         horizontal: 20, vertical: 20)
                 ),
                 textStyle: MaterialStateProperty.all(TextStyle(
                   color: Colors.black,
                  ),
                 ),
               ),
             ),
             verticalSpaceMedium,
             Row(
               children: <Widget>[
                 const Text('Does not have account?'),
                 TextButton(
                   child: const Text(
                     'Sign in',
                     style: TextStyle(fontSize: 20),
                   ),
                   onPressed: () {
                     akun(context);
                   },
                 ),
               ],
               mainAxisAlignment: MainAxisAlignment.center,
             ),
           ],
         ),
       ),
     ),
    );
  }
}
