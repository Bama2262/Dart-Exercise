import 'package:flutter/material.dart';
import '../component/custom_textfield.dart';
import '../controller/formula.dart';

class BalokPage extends StatefulWidget {
  const BalokPage({super.key});

  @override
  State<BalokPage> createState() => _BalokPageState();
}

class _BalokPageState extends State<BalokPage> {
  final panjangController = TextEditingController();
  final lebarController = TextEditingController();
  final tinggiController = TextEditingController();
  double hasil = 0;

  void hitungVolume() {
    double p = double.tryParse(panjangController.text) ?? 0;
    double l = double.tryParse(lebarController.text) ?? 0;
    double t = double.tryParse(tinggiController.text) ?? 0;
    setState(() {
      hasil = GeometryFormula.volumeBalok(p, l, t);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Volume Balok', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CustomTextField(label: 'Panjang', controller: panjangController),
            CustomTextField(label: 'Lebar', controller: lebarController),
            CustomTextField(label: 'Tinggi', controller: tinggiController),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: hitungVolume,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                side: const BorderSide(color: Colors.black),
                fixedSize: const Size(150, 40),
              ),
              child: const Text('Hitung', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 20),
            Text('Volume: $hasil', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}