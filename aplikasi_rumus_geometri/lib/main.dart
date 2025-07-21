import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Text("Text Baris 1"),
            Text("Text Baris 2"),
            Text("Text Baris 3"),
            Row(
              children: [
                Text("Text Posisi 1"),
                Text("Text Posisi 2"),
                Text("Text Posisi 3"),
                Stack(
                  children: [
                    Text("Text Tumpukan 1"),
                    Text("Text Tumpukan 2"),
                    Text("Text Tumpukan 3")
                  ],
                )
              ],
            )
          ],
        )
      ),
    );
  }
}
