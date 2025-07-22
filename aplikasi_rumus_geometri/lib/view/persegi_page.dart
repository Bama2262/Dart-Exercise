import 'package:flutter/material.dart';
import 'package:aplikasi_rumus_geometri/component/custom_textfield.dart';
import '../controller/formula.dart';

class PersegiPage extends StatefulWidget {
  const PersegiPage({super.key});

  @override
  State<PersegiPage> createState() => _PersegiPageState();
}

class _PersegiPageState extends State<PersegiPage> {
  final TextEditingController _panjangController = TextEditingController();
  final TextEditingController _lebarController = TextEditingController();
  final Formula hitungData = Formula();

  double hasil = 0;

  void hitung() {
    setState(() {
      double panjang = double.tryParse(_panjangController.text) ?? 0.0;
      double lebar = double.tryParse(_lebarController.text) ?? 0.0;
      hasil = hitungData.hitung(panjang, lebar);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Luas Persegi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextField(
              judul: 'Panjang',
              controller: _panjangController,
            ),
            const SizedBox(height: 15),
            CustomTextField(
              judul: 'Lebar',
              controller: _lebarController,
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: hitung,
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(
                  const Color.fromARGB(255, 132, 184, 216),
                ),
              ),
              child: const Text('Hitung'),
            ),
            const SizedBox(height: 15),
            Text(hasil.toString()),
          ],
        ),
      ),
    );
  }
}