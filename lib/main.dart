import 'package:flutter/material.dart';
import 'package:sth/result_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crush Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Crush Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

   String? crushName;
   String? personName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/eros.jpg',), fit: BoxFit.cover,)),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: const Color(0x8C000000),),   
                      height: 400,
                      width: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:  [
                              Column(
                                children: [const SizedBox( child: Text('Enter your crush\'s name:', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20, color: Color(0xFFb5bab7)),)),
                                SizedBox(width: 250, height: 45, child: TextField(decoration: const InputDecoration(        
              enabledBorder: UnderlineInputBorder(      
                    borderSide: BorderSide(color: Colors.purple),   
                    ),  
              focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple),
                 ),  
             ), style: const TextStyle(color: Color(0xFFb5bab7)), expands: true, maxLines: null, onChanged: (String name){
                                  setState(() {
                                    crushName = name;
                                    
                                  });
                                },)),
                            ],), 
                            const SizedBox(height: 75,),
                                Column(
                                  children: [
                                    const SizedBox( child: Text('Enter your name:', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20, color: Color(0xFFb5bab7)),)),
                                    SizedBox(width: 250, height: 45, child: TextField(decoration: const InputDecoration(        
              enabledBorder: UnderlineInputBorder(      
                    borderSide: BorderSide(color: Colors.purple),   
                    ),  
              focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple),
                 ),  
             ), style: const TextStyle(color: Color(0xFFb5bab7)), expands: true, maxLines: null, onChanged: (String name){
                                      setState(() {
                                        personName = name;
                                        
                                      });
                                    },)),
                                  ],
                                ),
                                const SizedBox(height: 40,),
                                ElevatedButton( style: ButtonStyle(  backgroundColor:
                                              MaterialStateProperty.all(const Color(0xFF723BB8))), onPressed: (){
                                  if (personName != null && crushName != null) {
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                                    return MyWidget(passedCrushName: crushName!, passedPersonName: personName!,);
                                  })));
                               
                                  } else {
                                    
                                  }
                                  
                                },  child: const Text('See the result'),)],
              
              
                            
                          ),
                          Container( decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                BoxShadow(
                  color: const Color(0xFFBD00FF).withAlpha(60),
                  blurRadius: 10.0,
                  spreadRadius: 6.0,
                  offset: const Offset(
                    0.0,
                    3.0,
                  ),
                ),
                ],), child: const Text('Made for fun by Abel and Beamlak', style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
