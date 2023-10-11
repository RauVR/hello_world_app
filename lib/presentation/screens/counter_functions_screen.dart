import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget{


  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {

  int clickCounter =0;
  String s="s";

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        title: const Text('Counter Function'),
/*        leading: IconButton(
          icon: Icon(Icons.refresh_rounded),//Esto coloca el icono a lado izq y una sola vez
          onPressed: () {  },),*/
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: (){
              setState(() {
                clickCounter=0;
              });
          },)
        ],


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


      floatingActionButton: Column(

        //Esta columna tiene 3 hijos dentro que es 2 FloatingActionButton y un SizedBox
        mainAxisAlignment: MainAxisAlignment.end,//Coloca el buttonen la parte final
        children: [

          CustomBotton(icon: Icons.refresh_rounded,onPressed: (){setState(() {
            clickCounter=0;
          });},),

          const SizedBox(height: 15),//Esto me da el espacion entre botones

          CustomBotton(icon: Icons.plus_one_rounded,onPressed: (){setState(() {
            clickCounter++;
          });},),

          const SizedBox(height: 15),//Esto me da el espacion entre botones

          CustomBotton(icon: Icons.exposure_minus_1_outlined, onPressed: (){setState(() {
            if(clickCounter==0)return;
            clickCounter--;

          });},),

        ],
      )


    );
  }
}

class CustomBotton extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed;


  const CustomBotton({
    super.key, required this.icon, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 5,
      backgroundColor: Colors.red,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}