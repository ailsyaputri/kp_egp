import 'package:flutter/material.dart';
import 'package:presensi_flutter/welcome.dart';
// import 'package:presensi_flutter/home_page.dart';
// import 'package:presensi_flutter/simpan_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'EGAPSEN',
        debugShowCheckedModeBanner: false,
        home: WelcomePage());
  }
}
