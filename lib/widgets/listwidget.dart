 import 'package:flutter/material.dart';
import 'package:hatirlama/screens/itemscreen.dart';
import 'package:hatirlama/widgets/toast.dart';

createlistwidget(int counter1) {
  
    return ListView.builder(
      itemCount: counter1,
      itemBuilder: (context,index){
      return  ListTile(
       
        onTap: () {
          Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => elamansayfasi(title: "Elaman sayfası",index: index,),
          ),
        );
        },
        onLongPress: () {
          showToast("Eklenen "+(index+1).toString()+". elaman");
        },
        title: Text(
          "Elaman "+ (index+1).toString()
        
        )
  ,);});
  }
  