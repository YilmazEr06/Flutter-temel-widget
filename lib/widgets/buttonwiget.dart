import 'package:flutter/material.dart';

createbuttonwithfunc(String s, void Function() func) {
    return
    ElevatedButton(onPressed: func,
               child: Text(s),style: ButtonStyle(
                minimumSize:  MaterialStateProperty.all(Size(100, 36)),
                backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 226, 236, 214)),
                padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 20,color: Color.fromARGB(255, 14, 11, 11))),));
  }


createfloatinactionbutton(int i,void Function() func) {
  if (i==1){
    return FloatingActionButton(
        onPressed: func,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
        heroTag: null,
      );
     }
   else if (i==0){
    return FloatingActionButton(
        onPressed: func,
        tooltip: 'Increment',
        child: const Icon(Icons.remove),
        heroTag: null,
      );
     }


   }
  

  
  