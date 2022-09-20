import 'package:flutter/material.dart';
import 'package:Malenochinchin/aletempik.dart';


class berhasil extends StatefulWidget {
  const berhasil({Key? key}) : super(key: key);

  void alesukakontol(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const aletempik()));
  }

  @override
  State<berhasil> createState() => _berhasilState();
}

class _berhasilState extends State<berhasil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget> [
          Text(
            "selamat berhasil registrasi"
          ),
          ElevatedButton(onPressed: (){
          },
            child: Text(
            "klik disini untuk ke dashboard"
            ),
          ),
        ],
      ),
    );
  }
}
