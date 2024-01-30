import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Theme1 {
  ThemeData buildTheme() {
    return ThemeData(
      pageTransitionsTheme:  const PageTransitionsTheme(
  builders: {
    TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
  },
),
      
      textTheme: TextTheme(
      displayLarge: const TextStyle(
        fontSize: 72,
        fontWeight: FontWeight.bold,
      ),
      // ···
      titleLarge: GoogleFonts.singleDay(
        fontSize: 30,
        fontStyle: FontStyle.italic,
      ),
      bodyMedium: GoogleFonts.playfairDisplay(fontSize: 30,fontStyle: FontStyle.normal),
      displaySmall: GoogleFonts.singleDay(),
    ),
    elevatedButtonTheme: const ElevatedButtonThemeData(),



    
      appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 124, 136, 73)),
      
      // Assuming useMaterial3 is a boolean property
      useMaterial3: true,
    );
  }
}