import 'package:flutter/material.dart';
import 'package:hello_world_app/presentation/screens/counter_functions_screen.dart';

void main(){
  
  runApp(const MyApp());

}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Para quitar el banner de DEBUG
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue
      ),
      home:const CounterFunctionsScreen()
    );
  }
  
}