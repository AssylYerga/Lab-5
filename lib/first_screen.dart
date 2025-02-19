import 'package:flutter/material.dart';
import 'package:flutter_application_4/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator"),
      ),
      body: Column(children: [
        ElevatedButton(onPressed: (){
          Navigator.pushNamed(context, '/second');
   },
   child: Text("Button")
   ),
   ElevatedButton(onPressed: () {
    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => SecondScreen()));
   }, child: Text('PushPeplacement'),
   ),
   ElevatedButton(onPressed: () {
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => SecondScreen()), (Route) => false);
   },
    child: Text('RushAndRemoveUntil'),
    ),
    ElevatedButton(onPressed: () {
      Navigator.pushNamedAndRemoveUntil(context, '/second', (Route) => false);
    }, 
    child: Text('PushnamedAndRemoveUntil'),
    ),
      ],
      ),
      );
}
}