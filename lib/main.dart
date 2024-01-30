import 'package:flutter/material.dart';
import 'package:hatirlama/screens/cardlist.dart';
import 'package:hatirlama/screens/listscreen.dart';
import 'package:hatirlama/screens/screen1.dart';

import 'package:hatirlama/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
       routes: {

      '/listpage':(context)=>listpage(),
      '/cardpage':(context)=>cardpage(),
      
    },
    
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: Theme1().buildTheme(),
      
      home: const MyHomePage(title: "Bu bir deneme uygulamsidir")
      
    );
  }
}

class Listpage {
}





void main() {
  runApp(MyApp());
}