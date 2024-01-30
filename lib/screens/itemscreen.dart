

import 'package:flutter/material.dart';



class elamansayfasi extends StatefulWidget {
  const elamansayfasi({super.key, required this.title,required this.index});
  final String title;
  final int index;
  @override
  State<elamansayfasi> createState() => _MyHomePageState();
}
  


class _MyHomePageState extends State<elamansayfasi> {
 

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(child: 
      Column(verticalDirection : VerticalDirection.down ,
      children: [ anaekranyazisi(),
      ],)),
      
    );
  }




anaekranyazisi() {
    return    Expanded(
          flex: 2,
          child:  Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text(
          "Elaman sayfası  ${(widget.index+1).toString()}",
          textAlign: TextAlign.center,
        ),
            ],
          )
          );
  }
  
  
  
  
 
}
