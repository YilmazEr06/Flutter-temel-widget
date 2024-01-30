

import 'package:flutter/material.dart';

import '../widgets/buttonwiget.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
  


class _MyHomePageState extends State<MyHomePage> {
 

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(child: 
      Column(verticalDirection : VerticalDirection.down ,
      children: [ anaekranyazisi(),createbuttonbar(""),
      ],)),
      
    );
  }

  void onPressed() {
  }
  void whenlistbuttonpressed() {
    print("object");
  }

  void _incrementCounter() {
    
    }
  
  anaekranyazisi() {
    return   const Expanded(
          flex: 2,
          child:  Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text("Bu amacı mevcut bilgiyi tekrar etmek ve pekiştirmek dir",
                textAlign: TextAlign.center),
              ),
            ],
          )
          );
  }
  
  createbutton(String s) {}
  
  createbuttonbar(String s)  {
    return
     Expanded(
          flex: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               createbuttonwithfunc("Liste",(){
                Navigator.pushNamed(context, '/listpage');
               }),
              const SizedBox(width: 50,),
              createbuttonwithfunc("kartlar", () {Navigator.pushNamed(context, '/cardpage');}),
            
            ],
          ),
        );
  }
  
  
  
  
  
 
}
