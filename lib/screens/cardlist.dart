import 'package:flutter/material.dart';
import 'package:hatirlama/widgets/cardwidget.dart';

int counter = 0;
int sol = 0;
int sag = 0;

class cardpage extends StatefulWidget {
  @override
  State<cardpage> createState() => _cardpage();
}

class _cardpage extends State<cardpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kartlar")),
      body: Center(
        child: Column(
          children: [
            const Expanded(
              flex: 2,
              child: SizedBox(
                height: 100,
              ),
            ),
            Expanded(
              flex: 10,
              child: cardwidget(
                  context,
                  () => setState(() {
                        sol = sol + 1;
                      }),
                  () => setState(() {
                        sag = sag + 1;
                      })),
            ),
            const Expanded(
              flex: 1,
              child: SizedBox(
                height: 75,
              ),
            ),
            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(sol.toString()),
                  Icon(Icons.arrow_back, size: 75),
                  Icon(Icons.arrow_forward, size: 75),
                  Text(sag.toString()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
