import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'contant_screen.dart';

class main_screen extends StatelessWidget {
  const main_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Rock-paper-scissors game",
        style: TextStyle(
          fontSize: 18,
          color: Colors.white
        ),
        ),
        backgroundColor:Colors.purple,),
        body: contant_screen(),
    );
  }
}