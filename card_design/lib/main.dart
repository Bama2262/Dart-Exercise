import 'package:flutter/material.dart';
import 'package:card_design/menu_card.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Latihan Membuat Card',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            CardMenu(
              title: 'Title Menu 1',
              backgroundColor: Color.fromARGB(255, 255, 218, 218),
              iconColor: Colors.red,
              textColor: Colors.red,
            ),
            CardMenu(
              title: 'Title Menu 2',
              backgroundColor: Color.fromARGB(255, 209, 227, 255),
              iconColor: Colors.blue,
              textColor: Colors.blue,
            ),
            CardMenu(
              title: 'Title Menu 3',
              backgroundColor: Color.fromARGB(255, 213, 247, 220),
              iconColor: Colors.green,
              textColor: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}