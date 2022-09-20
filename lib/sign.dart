import 'package:Malenochinchin/aletempik.dart';
import 'package:flutter/material.dart';
import 'package:Malenochinchin/ui.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class sign extends StatefulWidget {
  const sign({Key? key}) : super(key: key);



  @override
  State<sign> createState() => _signState();
}

class _signState extends State<sign> {
  DateTime now = DateTime.now();
  bool _isHidden = true;
  @override
  Widget build(BuildContext context) {

    void leale(BuildContext context){
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const aletempik()));
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Material(

          child: Center(
            child: Container(
              width: 450,
              height: 900,
              padding: const EdgeInsets.all(40.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10,
                      offset: Offset(5, 5), // Shadow position
                    ),
                  ],
                ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget> [
                  Text(
                    "Register"
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        labelText: 'username',
                        hintText: 'input your username'
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        labelText: 'Birthdate',
                        hintText: 'input your Birthdate'
                    ),
                    keyboardType: TextInputType.datetime,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        labelText: 'E-mail Adress',
                        hintText: 'input your E-mail Adress'
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        labelText: 'Phone Number',
                        hintText: 'input your Phone Number'
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  TextFormField(
                    obscureText: _isHidden,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        labelText: 'Password',
                        hintText: 'input your Pasword'
                    ),
                  ),
                  TextFormField(
                    obscureText: _isHidden,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        labelText: 'Confirm Password',
                        hintText: 'Confirm your password'
                    ),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      leale(context);
                    },
                    child: Text(
                    "Register"
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purple,
                    ),
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
