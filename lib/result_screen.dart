import 'package:flutter/material.dart';
import 'dart:math';

class MyWidget extends StatefulWidget {
  const MyWidget({required this.passedCrushName, required this.passedPersonName, super.key});
  final String passedCrushName;
  final String passedPersonName;

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int chances = Random().nextInt(70) + 30;
 late String message;

  void conditions() {
    if (chances <= 45) {
      setState(() {
        message = 'Just give up';
      });
    } else {
      setState(() {
        message = 'You are destined for each other!';
      });
    }
  }
  @override
  void initState() {
    conditions();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Container(
         decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/eros.jpg',), fit: BoxFit.cover,)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              width: 500,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: const Color(0x8C000000),),   
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${widget.passedPersonName}\'s chances of love with ${widget.passedCrushName} is $chances%.', style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 20, color: Color(0xFFb5bab7)), textAlign: TextAlign.center,),
                  Text(message, style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 20, color: Color(0xFFb5bab7)), textAlign: TextAlign.center,),
                ],
              ),
            ),
          ),
        ),
      ), ),
    );
  }
}