// import 'package:flutter/material.dart';
// import 'package:my_flutter_app/new_page.dart'; // Pastikan path ini benar

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
//         useMaterial3: true,
//       ),
//       home: const NewPage(), // Menampilkan halaman NewPage
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:my_flutter_app/tugas.dart'; // Import tugas.dart

void main() {
  runApp(MaterialApp(
    home: NilaiMahasiswaPage(),
  ));
}
