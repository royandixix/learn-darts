import 'package:flutter/material.dart';

class NilaiMahasiswaPage extends StatefulWidget {
  @override
  _NilaiMahasiswaPageState createState() => _NilaiMahasiswaPageState();
}

class _NilaiMahasiswaPageState extends State<NilaiMahasiswaPage> {
  final nimC = TextEditingController();
  final namaC = TextEditingController();
  final hadirC = TextEditingController();
  final tugasC = TextEditingController();
  final midC = TextEditingController();
  final finalC = TextEditingController();

  List<Map<String, String>> daftar = [];

  void proses() {
    double hadir = double.tryParse(hadirC.text) ?? 0;
    double tugas = double.tryParse(tugasC.text) ?? 0;
    double mid = double.tryParse(midC.text) ?? 0;
    double finalUjian = double.tryParse(finalC.text) ?? 0;

    double total = 0.1 * hadir + 0.2 * tugas + 0.3 * mid + 0.4 * finalUjian;
    String huruf = total >= 80 ? 'A'
                : total >= 70 ? 'B'
                : total >= 60 ? 'C'
                : total >= 50 ? 'D'
                : 'E';

    setState(() {
      daftar.add({
        "nim": nimC.text,
        "nama": namaC.text,
        "akhir": total.toStringAsFixed(2),
        "huruf": huruf,
      });

      nimC.clear();
      namaC.clear();
      hadirC.clear();
      tugasC.clear();
      midC.clear();
      finalC.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Nilai Mahasiswa")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            TextField(controller: nimC, decoration: InputDecoration(labelText: "NIM")),
            TextField(controller: namaC, decoration: InputDecoration(labelText: "Nama")),
            TextField(controller: hadirC, decoration: InputDecoration(labelText: "Hadir (%)"), keyboardType: TextInputType.number),
            TextField(controller: tugasC, decoration: InputDecoration(labelText: "Tugas (%)"), keyboardType: TextInputType.number),
            TextField(controller: midC, decoration: InputDecoration(labelText: "Mid (%)"), keyboardType: TextInputType.number),
            TextField(controller: finalC, decoration: InputDecoration(labelText: "Final (%)"), keyboardType: TextInputType.number),
            SizedBox(height: 20),
            ElevatedButton(onPressed: proses, child: Text("Proses")),
            SizedBox(height: 20),
            Text("Hasil:", style: TextStyle(fontWeight: FontWeight.bold)),
            for (var mhs in daftar) ...[
              Divider(),
              Text("NIM: ${mhs['nim']}"),
              Text("Nama: ${mhs['nama']}"),
              Text("Nilai Akhir: ${mhs['akhir']}"),
              Text("Nilai Huruf: ${mhs['huruf']}"),
            ]
          ],
        ),
      ),
    );
  }
}
