import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("SecondPage"),
    ),
      body: Column(children: [
        ElevatedButton(onPressed: (){
          Navigator.pop(context);
   },
   child: Text("Button"),
   ),
   ElevatedButton(onPressed: () {
    Navigator.popAndPushNamed(context, '/third');
   }, 
   child: Text('PopAndPushNamed'),
   ),
      ],),
);
}
}