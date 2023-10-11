import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{


  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int clickCounter =0;
  String s="s";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$clickCounter",style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),),
            Text("Click$s!!",style: const TextStyle(fontSize: 25),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() { //me actualiza la pantalla cuando llamo a la el click aumenta
            clickCounter++;
            if(clickCounter==1) {
              s = "";
            }else {
              s = "s";
            }
          });
        },
        child: const Icon(Icons.plus_one),
      ),


    );
  }
}