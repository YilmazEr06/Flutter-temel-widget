import 'package:flutter/material.dart';
import 'package:flutter_tindercard_plus/flutter_tindercard_plus.dart';


Widget cardwidget(BuildContext context, VoidCallback  left,VoidCallback  right) {
  

  return card(context,left,   right);
}

Widget card(BuildContext context, VoidCallback  left,VoidCallback  right) {
 
  var controller;
  return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      child: TinderSwapCard(
        cardController: controller,
        allowVerticalMovement: true,
        swipeEdgeVertical: 10,
        swipeUp: true,
        swipeDown: true,
        orientation: AmassOrientation.bottom,
        totalNum: 5,
        stackNum: 3,
        swipeEdge: 5.0,
        maxWidth: MediaQuery.of(context).size.width * 0.8,
        maxHeight: MediaQuery.of(context).size.height * 0.9,
        minWidth: MediaQuery.of(context).size.width * 0.799,
        minHeight: MediaQuery.of(context).size.height * 0.8,
        cardBuilder: (context, index) => Card(
          child: Container(
            color: const Color.fromARGB(255, 223, 219, 187),
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                const Text("Item kartı"),
                const CircleAvatar(backgroundColor: Colors.blue, radius: 90),

                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Lorem ipsum dolor sit amet consectetur adipisicing elit. ",textAlign: TextAlign.center,),
                )
              ],
            ),
          ),
        ),
       
        swipeUpdateCallback: (DragUpdateDetails details, Alignment align) {
          /// Get swiping card's alignment
          if (align.x < 0) {
        
            //Card is LEFT swiping
          } else if (align.x > 0) {
            //Card is RIGHT swiping
          }
        },
        swipeCompleteCallback: (CardSwipeOrientation orientation, int index) {
        
         if (orientation.name=="left"){
          left();
          print("left");

         }
         else if (orientation.name=="right"){
          right();
          print("right");
         }
          /// Get orientation & index of swiped card!
        },
      ));
}
