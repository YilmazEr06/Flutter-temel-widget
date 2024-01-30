
import 'package:flutter/material.dart';
import 'package:hatirlama/widgets/buttonwiget.dart';
import 'package:hatirlama/widgets/listwidget.dart';
import 'package:hatirlama/widgets/toast.dart';


int counter=0;
class listpage extends StatefulWidget {

  @override
  State<listpage> createState() => _listpagestate();
}
  


class _listpagestate extends State<listpage> {
 

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: const Text("Liste"),
      ),
      body: Center(child: 
      Column(verticalDirection : VerticalDirection.down ,
      children: [ anaekranyazisi(), createlistwidgetskull(),createincremantbar(),
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
          flex: 1,
          child:  Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Liste",
              textAlign: TextAlign.center),
            ],
          )
          );
  }
  
 
  createincremantbar() {
    return Expanded(
      flex: 1,
      child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        createfloatinactionbutton(0,(){
          setState(() {
            if (counter==0){
             showToast("Lütfen zorlamayın"); 
            }
            else {
              counter=counter-1;
            }
            
          });
          
        }),
        Container(child: Text(counter.toString()),
        padding: const EdgeInsets.all(10)),
        createfloatinactionbutton(1,(){
          setState(() {
            if (counter==10){
              showToast("Daha fazla öğe eklenemez"); 
            }
            else {
              counter=counter+1;
            }
          });
          }
        )]),
    );
  }
  
  createlistwidgetskull() {
    return Expanded(flex: 4, child: createlistwidget(counter)) ;
  }
  
 
  }
  

