import 'package:flutter/material.dart';
import 'package:apkhitungaritmatika/components/AppBarr.dart';
import '../../Components/Setting.dart';

class Segitiga extends StatefulWidget {
  const Segitiga({super.key});

  @override
  State<Segitiga> createState() => _SegitigaState();
}

class _SegitigaState extends State<Segitiga> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    TextEditingController Bill1 = TextEditingController();
    TextEditingController Bill2 = TextEditingController();
    TextEditingController Hitung = TextEditingController();
    return Scaffold(
      appBar: appbar(context),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: Bill1,
              decoration: InputDecoration(
                label: Text('Bilangan 1'),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: Bill2,
              decoration: InputDecoration(
                label: Text('Bilangan 2'),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: Hitung,
              decoration: InputDecoration(
                label: Text('Hasil Hitung'),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 410.0, // Atur lebar container
              height: 58.0,
              child: MaterialButton(
                color: Color.fromARGB(255, 51, 66, 164),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                onPressed: () {
                  double bilangan1 = double.parse(Bill1.text);
                  double bilangan2 = double.parse(Bill2.text);
                  double hasil = 0.5 * bilangan1 * bilangan2;
                  Hitung.text = hasil.toString();
                },
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: const Text(
                    "HITUNG",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
